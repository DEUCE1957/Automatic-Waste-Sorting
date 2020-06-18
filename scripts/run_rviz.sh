#!/bin/bash
cd workspace/
source devel/setup.bash
./baxter.sh sim
roslaunch baxter_moveit_config demo_baxter.launch right_electric_gripper:=true left_electric_gripper:=true