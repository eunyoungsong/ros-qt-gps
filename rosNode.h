// ros_node.h
#ifndef ROS_NODE_H
#define ROS_NODE_H

#include <ros/ros.h>
#include <sensor_msgs/NavSatFix.h>

class RosNode {
public:
    RosNode();
    void runRosNode(ros::NodeHandle nh);

private:
    ros::Subscriber sub;
    void gpsCallback(const sensor_msgs::NavSatFix::ConstPtr& msg);
};

#endif // ROS_NODE_H
