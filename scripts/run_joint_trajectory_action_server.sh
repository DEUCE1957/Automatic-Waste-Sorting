#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
rosrun baxter_tools enable_robot.py -e
rosrun baxter_interface joint_trajectory_action_server.py
