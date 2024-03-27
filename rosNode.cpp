// ros_node.cpp
#include "rosNode.h"
#include <QDebug>

RosNode::RosNode() {
}

void RosNode::runRosNode(ros::NodeHandle nh) {
    // ROS 토픽 구독 설정
    sub = nh.subscribe("ublox_gps/fix", 1000, &RosNode::gpsCallback, this);
    ros::spin();
}

void RosNode::gpsCallback(const sensor_msgs::NavSatFix::ConstPtr& msg) {
    // 위도와 경도 출력
    qDebug() << "Latitude: " << msg->latitude;
    qDebug() << "Longitude: " << msg->longitude;
}
