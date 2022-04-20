#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include <random>
#include "geometry_msgs/Point.h"

geometry_msgs::Point scale_msg;
ros::Publisher scale_pub;

constexpr int FLOAT_MIN = 0;
constexpr int FLOAT_MAX = 1;

void subCallback(const std_msgs::Float32::ConstPtr& pos)
{
  ros::NodeHandle callback_node_handle;
  std_msgs::Float32 pos_msg;

  std::random_device rd;
  std::default_random_engine eng(rd());
  std::uniform_real_distribution<> distr(FLOAT_MIN, FLOAT_MAX);

  pos_msg.data = pos->data;
  if(pos_msg.data < 3)
  {
    scale_msg.x = 0.8;
    scale_msg.y = 0.2;
    scale_msg.z = 0.3;
  }

  else if(pos_msg.data > 4 && pos_msg.data < 5)
  {
    scale_msg.x = 0.3;
    scale_msg.y = 0.3;
    scale_msg.z = 0.6;
  }

  else
  {
    scale_msg.x = distr(eng);
    scale_msg.y = distr(eng);
    scale_msg.z = distr(eng);
  }

  scale_pub.publish(scale_msg);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "position_sub_node");

  ros::NodeHandle node_handle;
  scale_pub = node_handle.advertise<geometry_msgs::Point>("scale", 10);
  ros::Subscriber pos_sub = node_handle.subscribe("position", 10, subCallback);
  ROS_INFO("Tacking Position...");

  ros::spin();

  return 0;
}
