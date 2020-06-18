#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
rosrun baxter_picker camera_listener_mono.py $1