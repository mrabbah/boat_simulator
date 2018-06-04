from abc import ABC, abstractmethod
from unityagents import UnityEnvironment, UnityEnvironmentException
import os
import zmq
import logging
from docopt import docopt
from copdaitrainers.util import function_inspector


class EnvironmentHyperParam(ABC):

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

    '''
    @abstractmethod
    def send_orders(self, orders, memories, action_text):
        pass
    '''
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
        if type == "SIMULATION": return SimulatorHyperParam(env_path, worker_id, curriculum_file, seed)
        if type == "RCBOAT": return RcBoatHyperParam()
        assert 0, "Bad shape creation: " + type

    factory = staticmethod(factory)


class SimulatorHyperParam(EnvironmentHyperParam):

    @function_inspector
    def initialize(self, fast_simulation):
        self.fast_simulation = fast_simulation
        #self.curr_info = self.env.reset(train_mode=self.fast_simulation)

    def __init__(self, env_path, worker_id, curriculum_file, seed):
        self.worker_id = worker_id
        self.curriculum_file = curriculum_file
        self.seed = seed
        #self.env = UnityEnvironment(file_name=env_path, worker_id=self.worker_id,
        #                            curriculum=self.curriculum_file, seed=self.seed)
        self.external_brain_names = ["BoatBrain"]
        #self.mode = {}  # Dictionary of brain name and their mode
        self.mode["BoatBrain"] = "continuous"  # can be either "continuous" or "discrete"
        #self.number_visual_observations = {}
        self.number_visual_observations["BoatBrain"] = 0
        self.observation_space_size["BoatBrain"] = 6
        self.action_space_size["BoatBrain"] = 2
        self.num_stacked_observations["BoatBrain"] = 10
        self.camera_resolutions = {}
        self.measure_type = ""  # can be either "progress" or "reward" or ""
        self.env_name = os.path.basename(os.path.normpath(env_path))  # Extract out name of environment
        self.curr_info = None

    @function_inspector
    def _get_progress(self, trainers):
        if self.curriculum_file is not None:
            progress = 0
            if self.measure_type == "progress":
                for brain_name in self.external_brain_names:
                    progress += trainers[brain_name]["get_step"] / trainers[brain_name]["get_max_steps"]
                return progress / len(self.external_brain_names)
            elif self.measure_type == "reward":
                for brain_name in self.external_brain_namess:
                    progress += trainers[brain_name]["get_last_reward"]
                return progress
            else:
                return None
        else:
            return None

    @function_inspector
    def get_trainers_names(self):
        # return self.env.external_brain_names
        return self.external_brain_names

    @function_inspector
    def set_lesson_number(self, ln):
        # self.env.curriculum.set_lesson_number(ln)
        pass

    @function_inspector
    def get_lesson_number(self):
        # return self.env.curriculum.lesson_number
        pass

    @function_inspector
    def increment_lesson(self, trainers):
        # self.env.curriculum.increment_lesson(self._get_progress(trainers))
        # self.env.curriculum.increment_lesson(None)
        pass

    @function_inspector
    def is_global_done(self):
        # return self.env.global_done
        return False

    @function_inspector
    def send_orders(self, orders, memories, action_text):
        self.curr_info = self.env.step(vector_action=orders, memory=memories,
                                       text_action=action_text)

    @function_inspector
    def get_action_space_type(self, brain_name):
        # return self.env.brains[brain_name].vector_action_space_type
        return self.mode[brain_name]

    @function_inspector
    def get_observation_space_type(self, brain_name):
        # return self.env.brains[brain_name].vector_observation_space_type
        return self.mode[brain_name]

    @function_inspector
    def get_number_visual_observations(self, brain_name):
        # return self.env.brains[brain_name].number_visual_observations
        return self.number_visual_observations[brain_name]

    @function_inspector
    def get_observation_space_size(self, brain_name):
        # return self.env.brains[brain_name].vector_observation_space_size
        return self.observation_space_size[brain_name]

    @function_inspector
    def get_action_space_size(self, brain_name):
        # return self.env.brains[brain_name].vector_action_space_size
        return self.action_space_size[brain_name]

    @function_inspector
    def get_num_stacked_observations(self, brain_name):
        # return self.env.brains[brain_name].num_stacked_vector_observations
        return self.num_stacked_observations[brain_name]

    @function_inspector
    def get_camera_resolutions(self, brain_name, camera_index):
        '''
        return [self.env.brains[brain_name].camera_resolutions[camera_index]['height'],
                self.env.brains[brain_name].camera_resolutions[camera_index]['width'],
                self.env.brains[brain_name].camera_resolutions[camera_index]['blackAndWhite']]
        '''
        return [self.camera_resolutions[brain_name][camera_index]['height'],
                self.camera_resolutions[brain_name][camera_index]['width'],
                self.camera_resolutions[brain_name][camera_index]['blackAndWhite']]

    @function_inspector
    def close(self):
        self.env.close()


class RcBoatHyperParam(EnvironmentHyperParam):

    def get_trainers_names(self):
        return ["BoatBrain"]

    def _get_progress(self, trainers):
        return None

    def set_lesson_number(self, ln):
        pass

    def get_lesson_number(self):
        pass

    def increment_lesson(self, trainers):
        pass

    def initialize(self, fast_simulation):
        pass

    def is_global_done(self):
        # TODO Determine which robot reached the goal or not
        return False

    def send_orders(self, orders, memories, action_text):
        pass

    def get_action_space_type(self, brain_name):
        pass

    def get_number_visual_observations(self, brain_name):
        pass

    def get_observation_space_size(self, brain_name):
        pass

    def get_action_space_size(self, brain_name):
        pass

    def get_observation_space_type(self, brain_name):
        pass

    def get_num_stacked_observations(self, brain_name):
        pass

    def get_camera_resolutions(self, brain_name, camera_index):
        pass

    def close(self):
        pass

