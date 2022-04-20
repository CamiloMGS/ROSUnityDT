// Generated by gencpp from file ros_unity_robotics/Joints_State_Panda.msg
// DO NOT EDIT!


#ifndef ROS_UNITY_ROBOTICS_MESSAGE_JOINTS_STATE_PANDA_H
#define ROS_UNITY_ROBOTICS_MESSAGE_JOINTS_STATE_PANDA_H

#include <ros/service_traits.h>


#include <ros_unity_robotics/Joints_State_PandaRequest.h>
#include <ros_unity_robotics/Joints_State_PandaResponse.h>


namespace ros_unity_robotics
{

struct Joints_State_Panda
{

typedef Joints_State_PandaRequest Request;
typedef Joints_State_PandaResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Joints_State_Panda
} // namespace ros_unity_robotics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_unity_robotics::Joints_State_Panda > {
  static const char* value()
  {
    return "4d4ae00253742627cd925fe537e1f8dd";
  }

  static const char* value(const ::ros_unity_robotics::Joints_State_Panda&) { return value(); }
};

template<>
struct DataType< ::ros_unity_robotics::Joints_State_Panda > {
  static const char* value()
  {
    return "ros_unity_robotics/Joints_State_Panda";
  }

  static const char* value(const ::ros_unity_robotics::Joints_State_Panda&) { return value(); }
};


// service_traits::MD5Sum< ::ros_unity_robotics::Joints_State_PandaRequest> should match
// service_traits::MD5Sum< ::ros_unity_robotics::Joints_State_Panda >
template<>
struct MD5Sum< ::ros_unity_robotics::Joints_State_PandaRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_unity_robotics::Joints_State_Panda >::value();
  }
  static const char* value(const ::ros_unity_robotics::Joints_State_PandaRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_unity_robotics::Joints_State_PandaRequest> should match
// service_traits::DataType< ::ros_unity_robotics::Joints_State_Panda >
template<>
struct DataType< ::ros_unity_robotics::Joints_State_PandaRequest>
{
  static const char* value()
  {
    return DataType< ::ros_unity_robotics::Joints_State_Panda >::value();
  }
  static const char* value(const ::ros_unity_robotics::Joints_State_PandaRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_unity_robotics::Joints_State_PandaResponse> should match
// service_traits::MD5Sum< ::ros_unity_robotics::Joints_State_Panda >
template<>
struct MD5Sum< ::ros_unity_robotics::Joints_State_PandaResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_unity_robotics::Joints_State_Panda >::value();
  }
  static const char* value(const ::ros_unity_robotics::Joints_State_PandaResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_unity_robotics::Joints_State_PandaResponse> should match
// service_traits::DataType< ::ros_unity_robotics::Joints_State_Panda >
template<>
struct DataType< ::ros_unity_robotics::Joints_State_PandaResponse>
{
  static const char* value()
  {
    return DataType< ::ros_unity_robotics::Joints_State_Panda >::value();
  }
  static const char* value(const ::ros_unity_robotics::Joints_State_PandaResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_UNITY_ROBOTICS_MESSAGE_JOINTS_STATE_PANDA_H