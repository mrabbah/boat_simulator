from abc import ABC, abstractmethod
import os
from copdaitrainers.running_environments import Simulator


class DataReader(object):

    def __init__(self, env):
        self.env = env

    def get_current_info(self):
        if type(self.env) is Simulator:
            return self.env.curr_info
        return []


class DataWriter(object):

    def __init__(self, env):
        self.env = env

    def write_data(self, take_action_vector, take_action_memories, take_action_text):
        # TODO Write to zeromq the necessary data
        if type(self.env) is Simulator:
            self.env.send_orders(take_action_vector, take_action_memories, take_action_text)
