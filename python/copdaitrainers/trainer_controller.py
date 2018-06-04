# # Unity ML Agents
# ## ML-Agent Learning
# Launches unitytrainers for each External Brains in a Unity Environment

import logging
import numpy as np
import os
import re
import tensorflow as tf
import yaml

from tensorflow.python.tools import freeze_graph
from copdaitrainers.ppo.trainer import PPOTrainer
from copdaitrainers.bc.trainer import BehavioralCloningTrainer

import zmq

from copdaitrainers.parameters import EnvironmentHyperParam
from copdaitrainers.data_processing import DataReader
from copdaitrainers.data_processing import DataWriter
from  multiprocessing import Process
from copdaitrainers import sensor_data_pb2
from copdaitrainers.util import function_inspector


class TrainerController(object):
    def __init__(self, env_path, run_id, save_freq, curriculum_file, fast_simulation, load, train,
                 worker_id, keep_checkpoints, lesson, seed, docker_target_name, trainer_config_path, environment,
                 service_url="tcp://*:5557", perception_url="tcp://localhost:5556", perception_topic=""):
        """

        :param env_path: Location to the environment executable to be loaded.
        :param run_id: The sub-directory name for model and summary statistics
        :param save_freq: Frequency at which to save model
        :param curriculum_file: Curriculum json file for environment
        :param fast_simulation: Whether to run the game at training speed
        :param load: Whether to load the model or randomly initialize
        :param train: Whether to train model, or only run inference
        :param worker_id: Number to add to communication port (5005). Used for multi-environment
        :param keep_checkpoints: How many model checkpoints to keep
        :param lesson: Start learning from this lesson
        :param seed: Random seed used for training.
        :param docker_target_name: Name of docker volume that will contain all data.
        :param trainer_config_path: Fully qualified path to location of trainer configuration file
        :param environment: The running environment
        :param service_url: The publisher service name
        :param perception_url: The location of perception layer
        :param perception_topic: the topic of the perception layer
        """
        self.trainer_config_path = trainer_config_path

        env_path = (env_path.strip()
                    .replace('.app', '')
                    .replace('.exe', '')
                    .replace('.x86_64', '')
                    .replace('.x86', ''))  # Strip out executable extensions if passed
        # Recognize and use docker volume if one is passed as an argument
        if docker_target_name == '':
            self.model_path = './models/{run_id}'.format(run_id=run_id)
            self.curriculum_file = curriculum_file
            self.summaries_dir = './summaries'
        else:
            self.model_path = '/{docker_target_name}/models/{run_id}'.format(
                docker_target_name=docker_target_name,
                run_id=run_id)
            env_path = '/{docker_target_name}/{env_name}'.format(docker_target_name=docker_target_name,
                                                                 env_name=env_path)
            if curriculum_file is None:
                self.curriculum_file = None
            else:
                self.curriculum_file = '/{docker_target_name}/{curriculum_file}'.format(
                    docker_target_name=docker_target_name,
                    curriculum_file=curriculum_file)
            self.summaries_dir = '/{docker_target_name}/summaries'.format(docker_target_name=docker_target_name)
        self.logger = logging.getLogger("unityagents")
        self.run_id = run_id
        self.save_freq = save_freq
        self.lesson = lesson
        self.fast_simulation = fast_simulation
        self.load_model = load
        self.train_model = train
        self.worker_id = worker_id
        self.keep_checkpoints = keep_checkpoints
        self.environment = environment
        self.trainers = {}
        if seed == -1:
            seed = np.random.randint(0, 999999)
        self.seed = seed
        np.random.seed(self.seed)
        tf.set_random_seed(self.seed)
        self.params = EnvironmentHyperParam.factory(environment, env_path, self.worker_id, self.curriculum_file, self.seed)
        self.env_name = os.path.basename(os.path.normpath(env_path))  # Extract out name of environment
        self.data_reader = DataReader()
        self.data_writer = DataWriter()
        '''
        #Init ZeroMq context
        self.context = zmq.Context()
        #init publisher
        self.service_url = service_url
        self.publisher = self.context.socket(zmq.PUB)
        self.publisher.bind(service_url)
        #init subscriber
        self.perception_url = perception_url
        self.perception_topic = perception_topic
        self.receiver = self.context.socket(zmq.SUB)
        self.receiver.connect(perception_url)
        self.receiver.setsockopt(zmq.SUBSCRIBE, perception_topic)

        # string = socket.recv()
        '''


    def _process_graph(self):
        nodes = []
        scopes = []
        for brain_name in self.trainers.keys():
            if self.trainers[brain_name].graph_scope is not None:
                scope = self.trainers[brain_name].graph_scope + '/'
                if scope == '/':
                    scope = ''
                scopes += [scope]
                if self.trainers[brain_name].parameters["trainer"] == "imitation":
                    nodes += [scope + x for x in ["action"]]
                elif not self.trainers[brain_name].parameters["use_recurrent"]:
                    nodes += [scope + x for x in ["action", "value_estimate", "action_probs"]]
                else:
                    node_list = ["action", "value_estimate", "action_probs", "recurrent_out", "memory_size"]
                    nodes += [scope + x for x in node_list]
        if len(scopes) > 1:
            self.logger.info("List of available scopes :")
            for scope in scopes:
                self.logger.info("\t" + scope)
        self.logger.info("List of nodes to export :")
        for n in nodes:
            self.logger.info("\t" + n)
        return nodes

    def _save_model(self, sess, saver, steps=0):
        """
        Saves current model to checkpoint folder.
        :param sess: Current Tensorflow session.
        :param steps: Current number of steps in training process.
        :param saver: Tensorflow saver for session.
        """
        last_checkpoint = self.model_path + '/model-' + str(steps) + '.cptk'
        saver.save(sess, last_checkpoint)
        tf.train.write_graph(sess.graph_def, self.model_path, 'raw_graph_def.pb', as_text=False)
        self.logger.info("Saved Model")

    def _export_graph(self):
        """
        Exports latest saved model to .bytes format for Unity embedding.
        """
        target_nodes = ','.join(self._process_graph())
        ckpt = tf.train.get_checkpoint_state(self.model_path)
        freeze_graph.freeze_graph(input_graph=self.model_path + '/raw_graph_def.pb',
                                  input_binary=True,
                                  input_checkpoint=ckpt.model_checkpoint_path,
                                  output_node_names=target_nodes,
                                  output_graph=self.model_path + '/' + self.env_name + "_" + self.run_id + '.bytes',
                                  clear_devices=True, initializer_nodes="", input_saver="",
                                  restore_op_name="save/restore_all", filename_tensor_name="save/Const:0")

    def _initialize_trainers(self, trainer_config, sess):
        trainer_parameters_dict = {}
        self.trainers = {}
        for brain_name in self._get_trainers_names():
            trainer_parameters = trainer_config['default'].copy()
            if len(self._get_trainers_names()) > 1:
                graph_scope = re.sub('[^0-9a-zA-Z]+', '-', brain_name)
                trainer_parameters['graph_scope'] = graph_scope
                trainer_parameters['summary_path'] = '{basedir}/{name}'.format(
                    basedir=self.summaries_dir,
                    name=str(self.run_id) + '_' + graph_scope)
            else:
                trainer_parameters['graph_scope'] = ''
                trainer_parameters['summary_path'] = '{basedir}/{name}'.format(
                    basedir=self.summaries_dir,
                    name=str(self.run_id))
            if brain_name in trainer_config:
                _brain_key = brain_name
                while not isinstance(trainer_config[_brain_key], dict):
                    _brain_key = trainer_config[_brain_key]
                for k in trainer_config[_brain_key]:
                    trainer_parameters[k] = trainer_config[_brain_key][k]
            trainer_parameters_dict[brain_name] = trainer_parameters.copy()
        for brain_name in self._get_trainers_names():
            if trainer_parameters_dict[brain_name]['trainer'] == "imitation":
                self.trainers[brain_name] = BehavioralCloningTrainer(sess, self.env, brain_name,
                                                                     trainer_parameters_dict[brain_name],
                                                                     self.train_model, self.seed)
            elif trainer_parameters_dict[brain_name]['trainer'] == "ppo":
                self.trainers[brain_name] = PPOTrainer(sess, self.env, brain_name, trainer_parameters_dict[brain_name],
                                                       self.train_model, self.seed)
            else:
                raise Exception("The trainer config contains an unknown trainer type for brain {}"
                                                .format(brain_name))

    def _load_config(self):
        try:
            with open(self.trainer_config_path) as data_file:
                trainer_config = yaml.load(data_file)
                return trainer_config
        except IOError:
            raise Exception("""Parameter file could not be found here {}.
                                            Will use default Hyper parameters"""
                                            .format(self.trainer_config_path))
        except UnicodeDecodeError:
            raise Exception("There was an error decoding Trainer Config from this path : {}"
                                            .format(self.trainer_config_path))

    @staticmethod
    def _create_model_path(model_path):
        try:
            if not os.path.exists(model_path):
                os.makedirs(model_path)
        except Exception:
            raise Exception("The folder {} containing the generated model could not be accessed."
                                            " Please make sure the permissions are set correctly."
                                            .format(model_path))

    def start_learning(self):
        self._set_lesson_number(self.lesson)
        trainer_config = self._load_config()
        self._create_model_path(self.model_path)

        tf.reset_default_graph()

        with tf.Session() as sess:
            self._initialize_trainers(trainer_config, sess)
            for k, t in self.trainers.items():
                self.logger.info(t)
            init = tf.global_variables_initializer()
            saver = tf.train.Saver(max_to_keep=self.keep_checkpoints)
            # Instantiate model parameters
            if self.load_model:
                self.logger.info('Loading Model...')
                ckpt = tf.train.get_checkpoint_state(self.model_path)
                if ckpt is None:
                    self.logger.info('The model {0} could not be found. Make sure you specified the right '
                                     '--run-id'.format(self.model_path))
                saver.restore(sess, ckpt.model_checkpoint_path)
            else:
                sess.run(init)
            global_step = 0  # This is only for saving the model
            self._increment_lesson(self.trainers)
            self._initialize(self.fast_simulation)
            curr_info = self.data_reader.get_current_info()
            if self.train_model:
                for brain_name, trainer in self.trainers.items():
                    trainer.write_tensorboard_text('Hyperparameters', trainer.parameters)
            try:
                while any([t.get_step <= t.get_max_steps for k, t in self.trainers.items()]) or not self.train_model:
                    if self._is_global_done():
                        self._increment_lesson(self.trainers)
                        self._initialize(self.fast_simulation)
                        curr_info = self.data_reader.get_current_info()
                        for brain_name, trainer in self.trainers.items():
                            trainer.end_episode()
                    # Decide and take an action
                    take_action_vector, take_action_memories, take_action_text, take_action_outputs = {}, {}, {}, {}
                    for brain_name, trainer in self.trainers.items():
                        (take_action_vector[brain_name],
                         take_action_memories[brain_name],
                         take_action_text[brain_name],
                         take_action_outputs[brain_name]) = trainer.take_action(curr_info)

                    self.data_writer.write_data(take_action_vector, take_action_memories,
                                                take_action_text)
                    new_info = self.data_reader.get_current_info()

                    for brain_name, trainer in self.trainers.items():
                        trainer.add_experiences(curr_info, new_info, take_action_outputs[brain_name])
                    curr_info = new_info
                    for brain_name, trainer in self.trainers.items():
                        trainer.process_experiences(curr_info)
                        if trainer.is_ready_update() and self.train_model and trainer.get_step <= trainer.get_max_steps:
                            # Perform gradient descent with experience buffer
                            trainer.update_model()
                        # Write training statistics to tensorboard.
                        trainer.write_summary(self._get_lesson_number())
                        if self.train_model and trainer.get_step <= trainer.get_max_steps:
                            trainer.increment_step()
                            trainer.update_last_reward()
                    if self.train_model and trainer.get_step <= trainer.get_max_steps:
                        global_step += 1
                    if global_step % self.save_freq == 0 and global_step != 0 and self.train_model:
                        # Save Tensorflow model
                        self._save_model(sess, steps=global_step, saver=saver)

                # Final save Tensorflow model
                if global_step != 0 and self.train_model:
                    self._save_model(sess,  steps=global_step, saver=saver)
            except KeyboardInterrupt:
                if self.train_model:
                    self.logger.info("Learning was interrupted. Please wait while the graph is generated.")
                    self._save_model(sess, steps=global_step, saver=saver)
                pass
        self._close()
        '''
        self.publisher.close()
        self.context.term()
        '''
        if self.train_model:
            self._export_graph()

    #@function_inspector
    def _get_trainers_names(self):
        return self.env.get_trainers_names()

    #@function_inspector
    def _set_lesson_number(self, lesson):
        self.env.set_lesson_number(lesson)

    #@function_inspector
    def _increment_lesson(self, trainers):
        self.env.increment_lesson(trainers)

    #@function_inspector
    def _initialize(self, fast_simulation):
        self.env.initialize(fast_simulation)

    #@function_inspector
    def _is_global_done(self):
        return self.env.is_global_done()

    #@function_inspector
    def _get_lesson_number(self):
        return self.env.get_lesson_number()

    #@function_inspector
    def _close(self):
        self.env.close()
