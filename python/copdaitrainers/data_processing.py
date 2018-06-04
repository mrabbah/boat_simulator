from abc import ABC, abstractmethod
import os
from copdaitrainers.parameters import Simulator
from copdaitrainers.sensor_data_pb2 import Action
import time
import datetime
import zmq
from copdaitrainers.util import function_inspector

class DataReader(object):

    def __init__(self):
        self.env = env
        #context = zmq.Context()
        #socket = context.socket(zmq.REQ)
        #self.socket.connect("tcp://localhost:5555")

    @function_inspector
    def get_current_info(self):
        if type(self.env) is Simulator:
            # self.print_brain_info_data()
            #self.socket.send(b"get_current_info")
            #curr_info = self.socket.recv_pyobj()
            #return curr_info
            return self.env.curr_info
        return []

    def print_brain_info_data(self):
        values = list(self.env.curr_info.values())
        brain_info = values[0]
        print("----------------------------------")
        # print(brain_info.__dict__)
        print("visual_observations : {}".format(brain_info.visual_observations))
        print("vector_observations : {}".format(brain_info.vector_observations[0]))
        print("text_observations : {}".format(brain_info.text_observations))
        print("memories : {}".format(brain_info.memories))
        print("rewards : {}".format(brain_info.rewards))
        print("local_done : {}".format(brain_info.local_done))
        print("max_reached : {}".format(brain_info.max_reached))
        print("agents : {}".format(brain_info.agents))
        print("previous_vector_actions : {}".format(brain_info.previous_vector_actions))
        print("previous_text_actions : {}".format(brain_info.previous_text_actions))

    def deserialize_data(self, data):
        pass


class DataWriter(object):

    def __init__(self):
        self.env = env

    def write_data(self, take_action_vector, take_action_memories, take_action_text):
        # TODO Write to zeromq the necessary data
        #self.print_data(take_action_vector, take_action_memories, take_action_text)
        actions = take_action_vector
        if type(self.env) is Simulator:
            actions = list(take_action_vector.values())[0][0]

        #self.serialize_data(actions)
        if type(self.env) is Simulator:
            self.env.send_orders(take_action_vector, take_action_memories, take_action_text)

    def serialize_data(self, actions):
        action = Action()
        action.acceleration = actions[0]
        action.torque = actions[1]
        now = time.time()
        action.time = now
        file_name = 'copdaitrainers/data/actions/actions.raw'
        with open(file_name, "ab+") as f:
            f.write(action.SerializeToString())
        file_name = 'copdaitrainers/data/actions/last_action.raw'
        with open(file_name, "wb+") as f:
            f.write(action.SerializeToString())

    def print_data(self, take_action_vector, take_action_memories, take_action_text):
        print("----------------------------------")
        print("take_action_vector : {}".format(take_action_vector))
        print("**********************************")
        print("take_action_memories : {}".format(take_action_memories))
        print("**********************************")
        print("take_action_text : {}".format(take_action_text))

