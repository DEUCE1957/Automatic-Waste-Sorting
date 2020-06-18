#!/bin/bash
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim
echo $1
echo "/pick_label_publisher_${1}"
rosnode kill /pick_label_publisher_${1} #session_ID
exit