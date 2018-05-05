import matplotlib.pyplot as plt
import numpy as np
import sys
from unityagents import UnityEnvironment
from PIL import Image

print("Python version:")
print(sys.version)

# check Python version
if (sys.version_info[0] < 3):
    raise Exception("ERROR: ML-Agents (v0.3 onwards) requires Python 3")

env_name = "boatsimulator_no_obstacle_external"  # Name of the Unity environment binary to launch
train_mode = True  # Whether to run the environment in training or inference mode


env = UnityEnvironment(file_name=env_name, 
	worker_id=0, seed=1)

# Examine environment parameters
print(str(env))

# Set the default brain to work with
default_brain = env.brain_names[0]
brain = env.brains[default_brain]


# Reset the environment
env_info = env.reset(train_mode=train_mode)[default_brain]


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

