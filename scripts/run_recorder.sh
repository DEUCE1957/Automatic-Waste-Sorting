#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
rosrun baxter_picker camera_recorder.py $1 $2 #limb, session_ID