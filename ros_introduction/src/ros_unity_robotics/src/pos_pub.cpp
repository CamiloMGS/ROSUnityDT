#include "ros/ros.h"
#include "std_msgs/Float32.h"

float POSITION = 0.3;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "position_pub_node");
  ros::NodeHandle node_handle;
  ros::Publisher pos_pub = node_handle.advertise<std_msgs::Float32>("position", 10);
  ros::Rate pub_rate(10);

  ROS_INFO("Publishing Position...");
  while(ros::ok())
  {
    std_msgs::Float32 msg;

    msg.data = POSITION + 0.025;
    POSITION = msg.data;

    pos_pub.publish(msg);
    pub_rate.sleep();
  }
}
