#!/bin/sh
xterm  -e  "roslaunch turtlebot_gazebo turtlebot_world.launch" & 
sleep 5
xterm  -e  "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/map/maps/map.yaml" &
sleep 5
xterm  -e  "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm  -e  "rosrun pick_objects pick_objects" 

