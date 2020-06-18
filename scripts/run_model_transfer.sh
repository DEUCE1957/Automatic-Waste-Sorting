#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
roslaunch gazebo2rviz gazebo2rviz.launch