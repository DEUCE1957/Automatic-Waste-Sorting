#!/bin/bash
print_usage() {
    printf "Usage: run_reward_publisher LIMB OBJECT_NAME SESSION_ID -e true/false -b 0.04 -b 0.06 -b 0.08"
}

while getopts 'b:e:l:o:s:' flag; do
  case "${flag}" in
    b) bbox+="${OPTARG} " ;;
    e) empty="${OPTARG}" ;;
    l) limb="${OPTARG}" ;;
    o) object="${OPTARG}" ;;
    s) session="${OPTARG}" ;;
    *) print_usage
       exit 1 ;;
  esac
done


echo "bbox: ${bbox}"
echo "empty: ${empty}"
echo "limb: ${limb}"
echo "object: ${object}"
echo "session: ${session}"
cd workspace/
source devel/setup.bash
sudo ./baxter.sh sim

if [[ -v bbox ]]; then
    if [[ -v empty ]]; then
        rosrun baxter_picker reward_publisher.py ${limb} ${object} ${session} --bbox ${bbox[@]} --empty "${empty}"
    else
        rosrun baxter_picker reward_publisher.py ${limb} ${object} ${session} --bbox ${bbox[@]}
    fi
elif [[ -v empty ]]; then
    rosrun baxter_picker reward_publisher.py ${limb} ${object} ${session} --empty "${empty}"
else
    rosrun baxter_picker reward_publisher.py ${limb} ${object} ${session}
fi