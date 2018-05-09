from abc import ABC, abstractmethod
import threading
import time
import datetime
import signal
from copdaitrainers import sensor_data_pb2
import zmq


class ServiceExit(Exception):
    """
    Custom exception which is used to trigger the clean exit
    of all running threads and the main program.
    """
    pass


class SensorsOrchestrator(object):

    def __init__(self, type, env, sensing_delay, brain_name):
        self.sensor_reader = SensorsReader.factory(type, env, sensing_delay, brain_name)
        # Register the signal handlers
        signal.signal(signal.SIGTERM, self.service_shutdown)
        signal.signal(signal.SIGINT, self.service_shutdown)

    def service_shutdown(self, signum, frame):
        self.sensor_reader.shutdown_flag.set()
        self.sensor_reader.join()

    def start_sensing(self):
        if self.sensor_reader.stopped():
            self.sensor_reader.setDaemon(True)
            self.sensor_reader.start()
            self.sensor_reader.join()

    def stop_sensing(self):
        if not self.sensor_reader.stopped():
            self.sensor_reader.shutdown_flag.set()
            self.sensor_reader.join()


class SensorsReader(ABC):

    @abstractmethod
    def stop(self):
        pass

    @abstractmethod
    def stopped(self):
        pass

    @abstractmethod
    def serialize_data(self, observations):
        pass

    def factory(type, env, sensing_delay, brain_name):
        if type == "SIMULATION": return SimulatorSensorsReader(env=env, name='sim_sensor_reader',
                                                               sensing_delay=sensing_delay, brain_name=brain_name)
        if type == "RCBOAT": return RcBoatSensorsReader(env=env, name='rc_boat_sensor_reader',
                                                        sensing_delay=sensing_delay, brain_name=brain_name)
        assert 0, "Bad Sensor type creation: " + type

    factory = staticmethod(factory)


class SimulatorSensorsReader(SensorsReader, threading.Thread):

    def __init__(self, env, sensing_delay, brain_name, group=None, target=None, name=None,
                 args=(), kwargs=None, verbose=None):
        threading.Thread.__init__(self, group=group, target=target, name=name,
                                  verbose=verbose)

        self.env = env
        self.brain_name = brain_name
        self.args = args
        self.kwargs = kwargs
        self.shutdown_flag = threading.Event()
        self.sensing_delay = sensing_delay

    def stop(self):
        self._stop_event.set()

    def stopped(self):
        return self._stop_event.is_set()

    def run(self):
        while not self.shutdown_flag.is_set():
            values = list(self.env.curr_info.values())
            brain_info = values[0]
            self.serialize_data(brain_info.vector_observations[0])
            time.sleep(self.sensing_delay)

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
        file_name = 'data/sensors_data/data.raw'
        with open(file_name, "ab") as f:
            f.write(data.SerializeToString())

        file_name = 'data/sensors_data/last_data.raw'
        with open(file_name, "wb") as f:
            f.write(data.SerializeToString())


class RcBoatSensorsReader(SensorsReader, threading.Thread):

    def __init__(self, env, sensing_delay, brain_name, group=None, target=None, name=None,
                 args=(), kwargs=None, verbose=None):
        threading.Thread.__init__(self, group=group, target=target, name=name,
                                  verbose=verbose)

        self.env = env
        self.brain_name = brain_name
        self.args = args
        self.kwargs = kwargs
        self.shutdown_flag = threading.Event()
        self.sensing_delay = sensing_delay

    def stop(self):
        self._stop_event.set()

    def stopped(self):
        return self._stop_event.is_set()

    def run(self):
        while not self.shutdown_flag.is_set():
            time.sleep(self.sensing_delay)

    def serialize_data(self, observations):
        pass
