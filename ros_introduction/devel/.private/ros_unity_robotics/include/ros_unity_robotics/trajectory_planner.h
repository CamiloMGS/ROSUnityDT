// Generated by gencpp from file ros_unity_robotics/trajectory_planner.msg
// DO NOT EDIT!


#ifndef ROS_UNITY_ROBOTICS_MESSAGE_TRAJECTORY_PLANNER_H
#define ROS_UNITY_ROBOTICS_MESSAGE_TRAJECTORY_PLANNER_H

#include <ros/service_traits.h>


#include <ros_unity_robotics/trajectory_plannerRequest.h>
#include <ros_unity_robotics/trajectory_plannerResponse.h>


namespace ros_unity_robotics
{

struct trajectory_planner
{

typedef trajectory_plannerRequest Request;
typedef trajectory_plannerResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct trajectory_planner
} // namespace ros_unity_robotics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_unity_robotics::trajectory_planner > {
  static const char* value()
  {
    return "21c74ee74be8fa8772be222ac6c4b3c3";
  }

  static const char* value(const ::ros_unity_robotics::trajectory_planner&) { return value(); }
};

template<>
struct DataType< ::ros_unity_robotics::trajectory_planner > {
  static const char* value()
  {
    return "ros_unity_robotics/trajectory_planner";
  }

  static const char* value(const ::ros_unity_robotics::trajectory_planner&) { return value(); }
};


// service_traits::MD5Sum< ::ros_unity_robotics::trajectory_plannerRequest> should match
// service_traits::MD5Sum< ::ros_unity_robotics::trajectory_planner >
template<>
struct MD5Sum< ::ros_unity_robotics::trajectory_plannerRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_unity_robotics::trajectory_planner >::value();
  }
  static const char* value(const ::ros_unity_robotics::trajectory_plannerRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_unity_robotics::trajectory_plannerRequest> should match
// service_traits::DataType< ::ros_unity_robotics::trajectory_planner >
template<>
struct DataType< ::ros_unity_robotics::trajectory_plannerRequest>
{
  static const char* value()
  {
    return DataType< ::ros_unity_robotics::trajectory_planner >::value();
  }
  static const char* value(const ::ros_unity_robotics::trajectory_plannerRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_unity_robotics::trajectory_plannerResponse> should match
// service_traits::MD5Sum< ::ros_unity_robotics::trajectory_planner >
template<>
struct MD5Sum< ::ros_unity_robotics::trajectory_plannerResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_unity_robotics::trajectory_planner >::value();
  }
  static const char* value(const ::ros_unity_robotics::trajectory_plannerResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_unity_robotics::trajectory_plannerResponse> should match
// service_traits::DataType< ::ros_unity_robotics::trajectory_planner >
template<>
struct DataType< ::ros_unity_robotics::trajectory_plannerResponse>
{
  static const char* value()
  {
    return DataType< ::ros_unity_robotics::trajectory_planner >::value();
  }
  static const char* value(const ::ros_unity_robotics::trajectory_plannerResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_UNITY_ROBOTICS_MESSAGE_TRAJECTORY_PLANNER_H
