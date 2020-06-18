#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
echo $1
echo "/baxter_camera_recorder_${1}"
rosnode kill /baxter_camera_recorder_${1} #session_ID
exit