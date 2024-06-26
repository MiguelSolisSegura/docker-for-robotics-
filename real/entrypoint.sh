#!/bin/bash
set -e

# Source the ROS and workspace setup files
source /opt/ros/noetic/setup.bash
source /root/catkin_ws/devel/setup.bash

# Launch ROS nodes
roslaunch tortoisebot_firmware bringup.launch #&

# Wait for a few seconds to ensure the launch file has started properly
sleep 5

# Launch RViz with the specified configuration file
rosrun rviz rviz -d /root/catkin_ws/ros1_config.rviz
