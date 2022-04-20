#include "ros/ros.h"
#include "ros_unity_robotics/Color_Object.h"
#include "ros_unity_robotics/SetColor.h"


bool SetColorObject(ros_unity_robotics::SetColor::Request &req,
                      ros_unity_robotics::SetColor::Response &res)
{
  if(req.object_name == "Cube")
  {
    res.is_color_available = true;
    res.set_color.r = 0;
    res.set_color.g = 0;
    res.set_color.b = 255;
    res.set_color.a = 1;
    res.set_color.color_name = "blue";
  }
  else if(req.object_name == "Sphere")
  {
    res.is_color_available = true;
    res.set_color.r = 0;
    res.set_color.g = 128;
    res.set_color.b = 0;
    res.set_color.a = 1;
    res.set_color.color_name = "green";
  }
  else
  {
    res.is_color_available = false;
  }

  return true;

}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "set_color_service_server_node");
  ros::NodeHandle node_handle;

  ros::ServiceServer service = node_handle.advertiseService("set_color", SetColorObject);

  ROS_INFO("Set Color Server Running...");

  ros::spin();

  return 0;
}
