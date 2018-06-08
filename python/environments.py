from abc import ABC, abstractmethod
from unityagents import UnityEnvironment, UnityEnvironmentException
import os
import zmq
import logging
from docopt import docopt
import time


class RunningEnvironment(ABC):

    @abstractmethod
    def _get_progress(self, trainers):
        pass

    @abstractmethod
    def get_trainers_names(self):
        pass

    @abstractmethod
    def set_lesson_number(self, ln):
        pass

    @abstractmethod
    def increment_lesson(self, trainers):
        pass

    @abstractmethod
    def get_lesson_number(self):
        pass

    @abstractmethod
    def initialize(self, fast_simulation):
        pass

    @abstractmethod
    def is_global_done(self):
        pass

    @abstractmethod
    def send_orders(self, orders, memories, action_text):
        pass

    @abstractmethod
    def get_action_space_type(self, brain_name):
        pass

    @abstractmethod
    def get_number_visual_observations(self, brain_name):
        pass

    @abstractmethod
    def get_observation_space_size(self, brain_name):
        pass

    @abstractmethod
    def get_action_space_size(self, brain_name):
        pass

    @abstractmethod
    def get_num_stacked_observations(self, brain_name):
        pass

    @abstractmethod
    def get_observation_space_type(self, brain_name):
        pass

    @abstractmethod
    def get_camera_resolutions(self, brain_name, camera_index):
        pass

    @abstractmethod
    def close(self):
        pass

    def factory(type, env_path, worker_id, curriculum_file, seed):
        if type == "SIMULATION": return Simulator(env_path, worker_id, curriculum_file, seed)
        # if type == "RCBOAT": return RcBoat()
        assert 0, "Bad shape creation: " + type

    factory = staticmethod(factory)


class Simulator(RunningEnvironment):

    def initialize(self, fast_simulation):
        self.fast_simulation = fast_simulation
        self.curr_info = self.env.reset(train_mode=self.fast_simulation)

    def __init__(self, env_path, worker_id, curriculum_file, seed):
        self.worker_id = worker_id
        self.curriculum_file = curriculum_file
        self.seed = seed
        self.env = UnityEnvironment(file_name=env_path, worker_id=self.worker_id,
                                    curriculum=self.curriculum_file, seed=self.seed)
        self.env_name = os.path.basename(os.path.normpath(env_path))  # Extract out name of environment
        self.curr_info = None

    def _get_progress(self, trainers):
        if self.curriculum_file is not None:
            progress = 0
            if self.env.curriculum.measure_type == "progress":
                for brain_name in self.env.external_brain_names:
                    progress += trainers[brain_name].get_step / trainers[brain_name].get_max_steps
                return progress / len(self.env.external_brain_names)
            elif self.env.curriculum.measure_type == "reward":
                for brain_name in self.env.external_brain_names:
                    progress += trainers[brain_name].get_last_reward
                return progress
            else:
                return None
        else:
            return None

    def get_trainers_names(self):
        return self.env.external_brain_names

    def set_lesson_number(self, ln):
        self.env.curriculum.set_lesson_number(ln)

    def get_lesson_number(self):
        return self.env.curriculum.lesson_number

    def increment_lesson(self, trainers):
        self.env.curriculum.increment_lesson(self._get_progress(trainers))

    def is_global_done(self):
        return self.env.global_done

    def send_orders(self, orders, memories, action_text):
        self.curr_info = self.env.step(vector_action=orders, memory=memories,
                                       text_action=action_text)

    def get_action_space_type(self, brain_name):
        return self.env.brains[brain_name].vector_action_space_type

    def get_observation_space_type(self, brain_name):
        return self.env.brains[brain_name].vector_observation_space_type

    def get_number_visual_observations(self, brain_name):
        return self.env.brains[brain_name].number_visual_observations

    def get_observation_space_size(self, brain_name):
        return self.env.brains[brain_name].vector_observation_space_size

    def get_action_space_size(self, brain_name):
        return self.env.brains[brain_name].vector_action_space_size

    def get_num_stacked_observations(self, brain_name):
        return self.env.brains[brain_name].num_stacked_vector_observations

    def get_camera_resolutions(self, brain_name, camera_index):
        return [self.env.brains[brain_name].camera_resolutions[camera_index]['height'],
                self.env.brains[brain_name].camera_resolutions[camera_index]['width'],
                self.env.brains[brain_name].camera_resolutions[camera_index]['blackAndWhite']]

    def close(self):
        self.env.close()



if __name__ == '__main__':
    logger = logging.getLogger("copdai_env")
    _USAGE = '''
    Usage:
      environments (<env>) [options]
      environments --help

    Options:
      --curriculum=<file>        Curriculum json file for environment [default: None].
      --seed=<n>                 Random seed used for training [default: -1].
      --slow                     Whether to run the game at training speed [default: False].
      --worker-id=<n>            Number to add to communication port (5005). Used for multi-environment [default: 0].
      --environment_type=<path>       The running environment  [default: SIMULATION].
    '''

    options = docopt(_USAGE)
    logger.info(options)

    # General parameters
    seed = int(options['--seed'])

    if options['--environment_type'] == 'Empty':
        environment_type = 'SIMULATION'
    else:
        environment_type = options['--environment_type']

    env_path = options['<env>']
    env_path = (env_path.strip()
        .replace('.app', '')
        .replace('.exe', '')
        .replace('.x86_64', '')
        .replace('.x86', ''))  # Strip out executable extensions if passed
    worker_id = int(options['--worker-id'])
    curriculum_file = str(options['--curriculum'])
    if curriculum_file == "None":
        curriculum_file = None
    fast_simulation = not bool(options['--slow'])

    env = RunningEnvironment.factory(environment_type, env_path, worker_id,
                                     curriculum_file, seed)

    env.initialize(fast_simulation)

    context = zmq.Context()
    socket = context.socket(zmq.REP)
    socket.bind("tcp://*:5560")

    try:
        while True:
            # Wait for next request from client
            # message = socket.recv()
            message = socket.recv_pyobj()
            #print("Received request: %s" % message)
            request = message[0]
            if request == "get_current_info":
                socket.send_pyobj(env.curr_info)
            elif request == "send_orders":
                orders = message[1]
                memories = message[2]
                action_text = message[3]
                env.send_orders(orders, memories, action_text)
                socket.send_pyobj("done")
            elif request == "close":
                env.close()
    except Exception as e:
        print(e)
        env.close()
    finally:
        socket.close()
        context.term()
