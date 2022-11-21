import pygame
import gym
import numpy
import matplotlib.pyplot as plt
import math
import numpy as np
# %matplotlib inline


# Global Configuration Parameters
THETA_STATE_BINS = 50
THETA_DOT_BINS = 50

EPISODES = 5000
DISCOUNT = 0.95
EPISODE_DISPLAY = 500
LEARNING_RATE = 0.25
EPSILON = 0.2


def check_env(env):
    # Environment values
    # [0] cart position along x-axis
    # [1] cart velocity
    # [2] pole angle (rad) <-------- We will use this
    # [3] pole angular velocity <--- And this
    print('Env. Observation Space: ', env.observation_space)
    print('Env. Observation Space - High:', env.observation_space.high)
    print('Env. Observation Space - Low:', env.observation_space.low)


def prepare_env():
    env = gym.make("CartPole-v1")  # , render_mode="human")

    print("Env, Observation Space: ", env.observation_space)
    print("Env, Observation Space - High: ", env.observation_space.high)
    print("Env, Observation Space - Low: ", env.observation_space.low)

    print("Env, Action Space: ", env.action_space)
    print("Env, Action Space: ", env.action_space.n)

    return env


env = prepare_env()

theta_minmax = env.observation_space.high[2]
theta_dot_minmax = math.radians(50)
theta_state_size = 50
theta_dot_state_size = 50
Q_TABLE = np.random.randn(
    theta_state_size, theta_dot_state_size, env.action_space.n)

# for stats
ep_rewards = []
ep_rewards_table = {'ep': [], 'avg': [], 'min': [], 'max': []}


def discretized_state(state, theta_minmax, theta_dot_minmax):
    # Initialized discrete array
    discrete_state = np.array([0, 0])
    # state[2] -> theta (pole angle in rads)
    theta_window = (theta_minmax - (-theta_minmax)) / THETA_STATE_BINS
    discrete_state[0] = (state[2] - (-theta_minmax)) // theta_window
    discrete_state[0] = min(THETA_STATE_BINS-1, max(0, discrete_state[0]))
    # state[3] -> theta_dot (pole angular velocity)
    theta_dot_window = (theta_dot_minmax -
                        (-theta_dot_minmax)) / THETA_DOT_BINS
    discrete_state[1] = (state[3] - (-theta_dot_minmax)) // theta_dot_window
    discrete_state[1] = min(THETA_DOT_BINS-1, max(0, discrete_state[1]))
    # return our discrete values as a tuple of ints
    return tuple(discrete_state.astype(np.int32))


def train_cart_pole_qlearning():
    # Prepare OpenGym CartPole Environment
    env = gym.make("CartPole-v1")
    check_env(env)
    # Max acceptable values for the features of our Q-Table
    theta_minmax = env.observation_space.high[2]
    theta_dot_minmax = math.radians(50)
    # Our Q-Table as a shape of (THETA_STATE_BINS * THETA_DOT_BINS * env.action_space.n)
    Q_TABLE = np.random.randn(
        THETA_STATE_BINS, THETA_DOT_BINS, env.action_space.n)
    # For stats
    ep_rewards = []
    ep_rewards_table = {'ep': [], 'avg': [], 'min': [], 'max': []}
    # Let's play EPISODES games!
    # This will allow us to optimize/train our Q-Table
    for episode in range(EPISODES):
        # let's see the game every EPISODE_DISPLAY games
        if (episode % EPISODE_DISPLAY == 0):
            render_state = True
            env = gym.make("CartPole-v1", render_mode='human')
        else:
            render_state = False
            env = gym.make("CartPole-v1")
        # each game we initialize our reward (and some other vars)
        episode_reward = 0
        done = False
        i = 0
        # ... and we get our initial state from the first observation of the environment
        first_obs = env.reset()[0]
        curr_discrete_state = discretized_state(
            first_obs, theta_minmax, theta_dot_minmax)
        # let's play until we... lose!!
        while (not done):
            # if it is to see the game, let's render it!
            if render_state:
                env.render()
            # EPSILON, i.e., exploration constant (use random actions?) to decide the next action
            if np.random.random() > EPSILON:
                action = np.argmax(Q_TABLE[curr_discrete_state])
            else:
                action = np.random.randint(0, env.action_space.n)
            # Let's execute the action (going left or right)
            # And get the new state of the environment
            new_state, reward, done, _, _ = env.step(action)
            # Let's get the discrete values of the pole's angle and the pole's angular velocity
            new_discrete_state = discretized_state(
                new_state, theta_minmax, theta_dot_minmax)
            # If we have not yet lost...
            # Let's update our Q-Table using the previous and current state of the environment
            if (not done):
                max_future_q = np.max(Q_TABLE[new_discrete_state])
                current_q = Q_TABLE[curr_discrete_state[0],
                                    curr_discrete_state[1], action]
                new_q = current_q + LEARNING_RATE * \
                    (reward + DISCOUNT*max_future_q - current_q)
                Q_TABLE[curr_discrete_state[0],
                        curr_discrete_state[1], action] = new_q
            i = i+1
            # update the curr_discrete_state and accumulate reward
            curr_discrete_state = new_discrete_state
            episode_reward += reward
        # when finally lost, store the obtained score (i.e., reward)
        ep_rewards.append(episode_reward)
        # each EPISODE_DISPLAY games, show some stats
        if (episode % EPISODE_DISPLAY == 0):
            avg_reward = sum(ep_rewards[-EPISODE_DISPLAY:]) / \
                len(ep_rewards[-EPISODE_DISPLAY:])
            ep_rewards_table['ep'].append(episode)
            ep_rewards_table['avg'].append(avg_reward)
            ep_rewards_table['min'].append(min(ep_rewards[-EPISODE_DISPLAY:]))
            ep_rewards_table['max'].append(max(ep_rewards[-EPISODE_DISPLAY:]))
            print(
                f"Episode:{episode} avg:{avg_reward} min:{min(ep_rewards[-EPISODE_DISPLAY:])} max:{max(ep_rewards[-EPISODE_DISPLAY:])}")
            ep_rewards = []
    # After playing all games, close the environment
    env.close()
    # Plot Model's evolution performance
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['avg'], label="avg")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['min'], label="min")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['max'], label="max")
    plt.legend(loc=4)  # bottom right
    plt.title('CartPole Q-Learning')
    plt.ylabel('Reward/Episode')
    plt.xlabel('Episodes')
    plt.show()
    # return all stats for future inspection
    return ep_rewards_table


def train_cart_pole_sarsa():
    # Prepare OpenGym CartPole Environment
    env = gym.make("CartPole-v1")
    check_env(env)
    # Max acceptable values for the features of our Q-Table
    theta_minmax = env.observation_space.high[2]
    theta_dot_minmax = math.radians(50)
    # Our Q-Table as a shape of (THETA_STATE_BINS * THETA_DOT_BINS * env.action_space.n)
    Q_TABLE = np.random.randn(
        THETA_STATE_BINS, THETA_DOT_BINS, env.action_space.n)
    # For stats
    ep_rewards = []
    ep_rewards_table = {'ep': [], 'avg': [], 'min': [], 'max': []}
    # Let's play EPISODES games!
    # This will allow us to optimize/train our Q-Table
    for episode in range(EPISODES):
        # let's see the game every EPISODE_DISPLAY games
        if (episode % EPISODE_DISPLAY == 0):
            render_state = True
            env = gym.make("CartPole-v1", render_mode='human')
        else:
            render_state = False
            env = gym.make("CartPole-v1")
        # each game we initialize our reward (and some other vars)
        episode_reward = 0
        done = False
        i = 0
        # ... and we get our initial state from the first observation of the environment
        first_obs = env.reset()[0]
        curr_discrete_state = discretized_state(
            first_obs, theta_minmax, theta_dot_minmax)
        # EPSILON, i.e., exploration constant (use random actions?) to decide the next action
        if np.random.random() > EPSILON:
            action = np.argmax(Q_TABLE[curr_discrete_state])
        else:
            action = np.random.randint(0, env.action_space.n)
        # let's play until we... lose!!
        while (not done):
            # if it is to see the game, let's render it!
            if render_state:
                env.render()
            # Let's execute the action (going left or right)
            # execute our action based on the current state
            new_state, reward, done, _, _ = env.step(action)
            new_discrete_state = discretized_state(
                new_state, theta_minmax, theta_dot_minmax)
            # see which action we should take next
            if np.random.random() > EPSILON:
                new_action = np.argmax(Q_TABLE[new_discrete_state])
            else:
                new_action = np.random.randint(0, env.action_space.n)
            # If we have not yet lost...
            # Let's update our Q-Table using the previous and current state of the environment
            if (not done):
                current_q = Q_TABLE[curr_discrete_state+(action,)]
                max_future_q = Q_TABLE[new_discrete_state+(new_action,)]
                new_q = current_q + LEARNING_RATE * \
                    (reward + DISCOUNT*max_future_q - current_q)
                Q_TABLE[curr_discrete_state[0],
                        curr_discrete_state[1], action] = new_q
            i = i+1
            # update the curr_discrete_state and accumulate reward
            curr_discrete_state = new_discrete_state
            action = new_action
            episode_reward += reward
        # when finally lost, store the obtained score (i.e., reward)
        ep_rewards.append(episode_reward)
        # each EPISODE_DISPLAY games, show some stats
        if (episode % EPISODE_DISPLAY == 0):
            avg_reward = sum(ep_rewards[-EPISODE_DISPLAY:]) / \
                len(ep_rewards[-EPISODE_DISPLAY:])
            ep_rewards_table['ep'].append(episode)
            ep_rewards_table['avg'].append(avg_reward)
            ep_rewards_table['min'].append(min(ep_rewards[-EPISODE_DISPLAY:]))
            ep_rewards_table['max'].append(max(ep_rewards[-EPISODE_DISPLAY:]))
            print(
                f"Episode:{episode} avg:{avg_reward} min:{min(ep_rewards[-EPISODE_DISPLAY:])} max:{max(ep_rewards[-EPISODE_DISPLAY:])}")
            ep_rewards = []
    # After playing all games, close the environment
    env.close()
    # Plot Model's evolution performance
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['avg'], label="avg")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['min'], label="min")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['max'], label="max")
    plt.legend(loc=4)  # bottom right
    plt.title('CartPole SARSA')
    plt.ylabel('Reward/Episode')
    plt.xlabel('Episodes')
    plt.show()
    # return all stats for future inspection
    return ep_rewards_table


def train_cart_pole_sarsa():
    # Prepare OpenGym CartPole Environment
    env = gym.make("CartPole-v1")
    check_env(env)
    # Max acceptable values for the features of our Q-Table
    theta_minmax = env.observation_space.high[2]
    theta_dot_minmax = math.radians(50)
    # Our Q-Table as a shape of (THETA_STATE_BINS * THETA_DOT_BINS * env.action_space.n)
    Q_TABLE = np.random.randn(
        THETA_STATE_BINS, THETA_DOT_BINS, env.action_space.n)
    # For stats
    ep_rewards = []
    ep_rewards_table = {'ep': [], 'avg': [], 'min': [], 'max': []}
    # Let's play EPISODES games!
    # This will allow us to optimize/train our Q-Table
    for episode in range(EPISODES):
        # let's see the game every EPISODE_DISPLAY games
        if (episode % EPISODE_DISPLAY == 0):
            render_state = True
            env = gym.make("CartPole-v1", render_mode='human')
        else:
            render_state = False
            env = gym.make("CartPole-v1")
        # each game we initialize our reward (and some other vars)
        episode_reward = 0
        done = False
        i = 0
        # ... and we get our initial state from the first observation of the environment
        first_obs = env.reset()[0]
        curr_discrete_state = discretized_state(
            first_obs, theta_minmax, theta_dot_minmax)
        # EPSILON, i.e., exploration constant (use random actions?) to decide the next action
        if np.random.random() > EPSILON:
            action = np.argmax(Q_TABLE[curr_discrete_state])
        else:
            action = np.random.randint(0, env.action_space.n)
        # let's play until we... lose!!
        while (not done):
            # if it is to see the game, let's render it!
            if render_state:
                env.render()
            # Let's execute the action (going left or right)
            # execute our action based on the current state
            new_state, reward, done, _, _ = env.step(action)
            new_discrete_state = discretized_state(
                new_state, theta_minmax, theta_dot_minmax)
            # see which action we should take next
            if np.random.random() > EPSILON:
                new_action = np.argmax(Q_TABLE[new_discrete_state])
            else:
                new_action = np.random.randint(0, env.action_space.n)
            # If we have not yet lost...
            # Let's update our Q-Table using the previous and current state of the environment
            if (not done):
                current_q = Q_TABLE[curr_discrete_state+(action,)]
                max_future_q = Q_TABLE[new_discrete_state+(new_action,)]
                new_q = current_q + LEARNING_RATE * \
                    (reward + DISCOUNT*max_future_q - current_q)
                Q_TABLE[curr_discrete_state[0],
                        curr_discrete_state[1], action] = new_q
            i = i+1
            # update the curr_discrete_state and accumulate reward
            curr_discrete_state = new_discrete_state
            action = new_action
            episode_reward += reward
        # when finally lost, store the obtained score (i.e., reward)
        ep_rewards.append(episode_reward)
        # each EPISODE_DISPLAY games, show some stats
        if (episode % EPISODE_DISPLAY == 0):
            avg_reward = sum(ep_rewards[-EPISODE_DISPLAY:]) / \
                len(ep_rewards[-EPISODE_DISPLAY:])
            ep_rewards_table['ep'].append(episode)
            ep_rewards_table['avg'].append(avg_reward)
            ep_rewards_table['min'].append(min(ep_rewards[-EPISODE_DISPLAY:]))
            ep_rewards_table['max'].append(max(ep_rewards[-EPISODE_DISPLAY:]))
            print(
                f"Episode:{episode} avg:{avg_reward} min:{min(ep_rewards[-EPISODE_DISPLAY:])} max:{max(ep_rewards[-EPISODE_DISPLAY:])}")
            ep_rewards = []
    # After playing all games, close the environment
    env.close()
    # Plot Model's evolution performance
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['avg'], label="avg")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['min'], label="min")
    plt.plot(ep_rewards_table['ep'], ep_rewards_table['max'], label="max")
    plt.legend(loc=4)  # bottom right
    plt.title('CartPole SARSA')
    plt.ylabel('Reward/Episode')
    plt.xlabel('Episodes')
    plt.show()
    # return all stats for future inspection
    return ep_rewards_table


# Q-learning
ep_rewards_table_qlearning = train_cart_pole_qlearning()

# SARSA
ep_rewards_table_sarsa = train_cart_pole_sarsa()


env.close()

plt.plot(ep_rewards_table['ep'], ep_rewards_table['avg'], label='avg')
plt.plot(ep_rewards_table['ep'], ep_rewards_table['min'], label='min')
plt.plot(ep_rewards_table['ep'], ep_rewards_table['max'], label='max')

plt.legend(loc=4)
plt.title('CartPole Q-Learning')
plt.ylabel('Average reward/Episode')
plt.xlabel('Episodes')
plt.show()
