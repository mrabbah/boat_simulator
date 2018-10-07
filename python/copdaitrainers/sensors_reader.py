from abc import ABC, abstractmethod
import threading
import time
import datetime
import signal
from copdaitrainers import sensor_data_pb2
import zmq
from  multiprocessing import Process

class ServiceExit(Exception):
    """
    Custom exception which is used to trigger the clean exit
    of all running threads and the main program.
    """
    pass


class SensorsReader(ABC):

    def __init__(self):
        self.paused = False
        self.stop_running = False

    def run(self):
        p_camera = Process(target=self.read_camera, args=()).start()
        p_gyroscope = Process(target=self.read_gyroscope, args=()).start()
        p_location = Process(target=self.read_position, args=()).start()
        while not self.stop_running:
            time.sleep(1)
        p_camera.kill()
        p_gyroscope.kill()
        p_location.kill()

    def stop(self):
        self.stop_running = True

    def stopped(self):
        return self.stop_running

    @abstractmethod
    def serialize_data(self, observations):
        pass

    @abstractmethod
    def read_position(self):
        pass

    @abstractmethod
    def read_gyroscope(self):
        pass

    @abstractmethod
    def read_camera(self):
        pass

    def factory(type):
        if type == "SIMULATION": return SimulatorSensorsReader()
        if type == "RCBOAT": return RcBoatSensorsReader()
        assert 0, "Bad Sensor type creation: " + type

    factory = staticmethod(factory)


class SimulatorSensorsReader(SensorsReader):

    def __init__(self):
        super().__init__(self)


    def read_camera(self):
        while not self.stop_running:
            time.sleep(10)

    def read_gyroscope(self):
        context = zmq.Context()
        client = context.socket(zmq.REQ)
        client.connect("ipc:///tmp/sim.pipe")
        publisher = context.socket(zmq.PUB)
        publisher.bind("ipc:///tmp/gyroscope.pipe")
        while True:
            client.send_pyobj(["get_current_info"])
            curr_info = client.recv_pyobj()
            publisher.send_pyobj(curr_info)
        client.close()
        context.term()

    def read_position(self):
        context = zmq.Context()
        client = context.socket(zmq.REQ)
        client.connect("ipc:///tmp/sim.pipe")
        publisher = context.socket(zmq.PUB)
        publisher.bind("ipc:///tmp/position.pipe")
        while True:
            client.send_pyobj(["get_current_info"])
            curr_info = client.recv_pyobj()
            publisher.send_pyobj(curr_info)
        client.close()
        context.term()

    def serialize_data(self, observations):
        num_stacked_observations = self.env.get_num_stacked_observations(self.brain_name)
        data = sensor_data_pb2.Data()
        iterator = 0
        now = time.time()
        for stack_number in range(num_stacked_observations):
            geolocation = data.geolocations.add()
            geolocation.lat = observations[0 + stack_number * iterator]
            geolocation.lng = observations[1 + stack_number * iterator]
            geolocation.z = observations[2 + stack_number * iterator]
            geolocation.time = now
            accel = data.accelerometers.add()
            accel.rotation_x = observations[3 + stack_number * iterator]
            accel.rotation_y = observations[4 + stack_number * iterator]
            accel.rotation_z = observations[5 + stack_number * iterator]
            accel.velocity_x = observations[6 + stack_number * iterator]
            accel.velocity_y = observations[7 + stack_number * iterator]
            accel.velocity_z = observations[8 + stack_number * iterator]
            accel.time = now
            iterator = iterator + 1

        data.time = now
        file_name = 'copdaitrainers/data/sensors_data/data.raw'
        with open(file_name, "ab") as f:
            f.write(data.SerializeToString())

        file_name = 'copdaitrainers/data/sensors_data/last_data.raw'
        with open(file_name, "wb") as f:
            f.write(data.SerializeToString())


class RcBoatSensorsReader(SensorsReader, threading.Thread):

    def serialize_data(self, observations):
        pass


