'''
import zmq
from copdaitrainers import sensor_data_pb2

class Perception(object):

    def __init__(self):

    @staticmethod
    def get_data(type, env, brain_name):
        if type == "SIMULATION": return SimulatorSensorsReader(env=env, name='sim_sensor_reader',
                                                               sensing_delay=sensing_delay, brain_name=brain_name)
        if type == "RCBOAT": return RcBoatSensorsReader(env=env, name='rc_boat_sensor_reader',
                                                        sensing_delay=sensing_delay, brain_name=brain_name)
        assert 0, "Bad Sensor type creation: " + type
'''