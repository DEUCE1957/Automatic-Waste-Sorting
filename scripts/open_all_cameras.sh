#!/bin/bash
cd workspace/
echo $(pwd)
source devel/setup.bash
./baxter.sh sim
rosrun image_view image_view image:=/cameras/left_hand_camera/image _window_name:="Left Wrist View" _filename_format:="BaxterLeftWrist-frame%04i.jpg" &
rosrun image_view image_view image:=/cameras/right_hand_camera/image _window_name:="Right Wrist View" _filename_format:="BaxterRightWrist-frame%04i.jpg" &
rosrun image_view image_view image:=/cameras/head_camera/image _window_name:="Head View" _filename_format:="BaxterHead-frame%04i.jpg"