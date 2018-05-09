import matplotlib.pyplot as plt
import numpy as np
import sys
from unityagents import UnityEnvironment
from PIL import Image
import tensorflow as tf
from tensorflow.python.tools import freeze_graph
import math
import time

def load_graph(frozen_graph_filename):
    # We load the protobuf file from the disk and parse it to retrieve the 
    # unserialized graph_def
    with tf.gfile.GFile(frozen_graph_filename, "rb") as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())

    # Then, we import the graph_def into a new Graph and returns it 
    with tf.Graph().as_default() as graph:
        # The name var will prefix every op/nodes in your graph
        # Since we load everything in a new graph, this is not needed
        tf.import_graph_def(graph_def, name="prefix")
    return graph

def run_step(sess, x, y):
    rawvo = env_info.vector_observations[0]
    vector_observation = [None] * 6
    vector_observation[0] = rawvo[3]
    vector_observation[1] = rawvo[4]
    vector_observation[2] = rawvo[6]
    vector_observation[3] = rawvo[7]
    vector_observation[4] = math.sqrt(math.pow(rawvo[0] - target_x, 2) + math.pow(rawvo[1] - target_z, 2))
    vector_observation[5] = rawvo[5]
    vector_observations = [] 
    for _ in range(10):
        vector_observations = vector_observations + vector_observation
    print("Agent state looks like: \n{}".format(vector_observations))
    #feed_dict = {batch_size: 6, sequence_length: 1, vector_observation : vector_observations}
    feed_dict = {x:[vector_observations]}
    y_out = sess.run(y, feed_dict=feed_dict)
    print("Run list looks like: \n{}".format(y_out[0][0]))
    return y_out

#print("Python version:")
#print(sys.version)

# check Python version
if (sys.version_info[0] < 3):
    raise Exception("ERROR: ML-Agents (v0.3 onwards) requires Python 3")

env_name = "boatsimulator_no_obstacle_external"  # Name of the Unity environment binary to launch
train_mode = True  # Whether to run the environment in training or inference mode


env = UnityEnvironment(file_name=env_name, 
	worker_id=0, seed=1)

# Examine environment parameters
#print(str(env))

# Set the default brain to work with
default_brain = env.brain_names[0]
brain = env.brains[default_brain]


# Reset the environment
env_info = env.reset(train_mode=train_mode)[default_brain]

target_x = 362
target_y = 0
target_z = -52
graph = load_graph('models/103/boatsimulator_103.bytes')
#for op in graph.get_operations():
#        print(op.name)


#prefix/vector_observation
#prefix/action
#prefix/action_probs
#prefix/value_estimate

x = graph.get_tensor_by_name('prefix/vector_observation:0')

#y = [graph.get_tensor_by_name('prefix/value_estimate:0')]
y = [graph.get_tensor_by_name('prefix/action:0')]
y = y + [graph.get_tensor_by_name('prefix/action_probs:0')]

#for _ in range(10):
#    print("Agent state looks like: \n{}".format(env_info.vector_observations[0]))
#    env_info = env.step([1.0, 0.0])[default_brain]
    #time.sleep(0.5)

with tf.Session(graph=graph) as sess:
    y_out = run_step(sess, x, y)

    done = False
    episode_rewards = 0
    while not done:
        #env_info = env.step(np.random.randn(len(env_info.agents), 
        #            brain.vector_action_space_size))[default_brain]                                         size=(len(env_info.agents))))[default_brain]
        env_info = env.step([y_out[0][0][0], y_out[0][0][1]])[default_brain]
        print("Agent state looks like: \n{}".format(env_info.vector_observations[0]))
        episode_rewards += env_info.rewards[0]
        done = env_info.local_done[0]

    print("Total reward this episode: {}".format(episode_rewards))


'''
for episode in range(10):
    env_info = env.reset(train_mode=train_mode)[default_brain]
    done = False
    episode_rewards = 0

    while not done:
        #env_info = env.step(np.random.randn(len(env_info.agents), 
        #            brain.vector_action_space_size))[default_brain]                                         size=(len(env_info.agents))))[default_brain]
        env_info = env.step([1.0, 0.0])[default_brain]
        episode_rewards += env_info.rewards[0]
        done = env_info.local_done[0]

    print("Total reward this episode: {}".format(episode_rewards))
'''
# Examine the state space for the default brain
#print("Agent state looks like: \n{}".format(env_info.vector_observations[0]))
'''
# Examine the observation space for the default brain
for observation in env_info.visual_observations:

    print("Visual Agent observations look like:")
    img = Image.fromarray((observation[0,:,:,:] * 255.0).astype('uint8') )
    img.save('test.png')
    
    if observation.shape[3] == 3:
        plt.imshow(observation[0,:,:,:])
        plt.pause(10)
    else:
        plt.imshow(observation[0,:,:,0])
'''      
'''
for episode in range(10):
    env_info = env.reset(train_mode=train_mode)[default_brain]
    done = False
    episode_rewards = 0
    while not done:
        #env_info = env.step(np.random.randn(len(env_info.agents), 
        #            brain.vector_action_space_size))[default_brain]                                         size=(len(env_info.agents))))[default_brain]
        env_info = env.step([1.0, 0.0])[default_brain]
        episode_rewards += env_info.rewards[0]
        done = env_info.local_done[0]

    print("Total reward this episode: {}".format(episode_rewards))
'''          
env.close()

