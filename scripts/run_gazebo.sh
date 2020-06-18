#!/bin/bash
cd workspace/
source devel/setup.bash
./baxter.sh sim
roslaunch baxter_gazebo baxter_world.launch