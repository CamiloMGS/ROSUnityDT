# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_unity_robotics: 2 messages, 3 services")

set(MSG_I_FLAGS "-Iros_unity_robotics:/home/medina/ros_introduction/src/ros_unity_robotics/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_unity_robotics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_custom_target(_ros_unity_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_unity_robotics" "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" ""
)

get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_custom_target(_ros_unity_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_unity_robotics" "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" "trajectory_msgs/JointTrajectory:ros_unity_robotics/Robot_Joints:trajectory_msgs/MultiDOFJointTrajectoryPoint:moveit_msgs/RobotTrajectory:geometry_msgs/Twist:trajectory_msgs/MultiDOFJointTrajectory:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Point:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_custom_target(_ros_unity_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_unity_robotics" "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_custom_target(_ros_unity_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_unity_robotics" "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" "ros_unity_robotics/Color_Object"
)

get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_custom_target(_ros_unity_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_unity_robotics" "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
)
_generate_msg_cpp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
)

### Generating Services
_generate_srv_cpp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_cpp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_cpp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv"
  "${MSG_I_FLAGS}"
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
)

### Generating Module File
_generate_module_cpp(ros_unity_robotics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_unity_robotics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_unity_robotics_generate_messages ros_unity_robotics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_cpp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_cpp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_cpp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_cpp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_cpp _ros_unity_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_unity_robotics_gencpp)
add_dependencies(ros_unity_robotics_gencpp ros_unity_robotics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_unity_robotics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
)
_generate_msg_eus(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
)

### Generating Services
_generate_srv_eus(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_eus(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_eus(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv"
  "${MSG_I_FLAGS}"
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
)

### Generating Module File
_generate_module_eus(ros_unity_robotics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_unity_robotics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_unity_robotics_generate_messages ros_unity_robotics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_eus _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_eus _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_eus _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_eus _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_eus _ros_unity_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_unity_robotics_geneus)
add_dependencies(ros_unity_robotics_geneus ros_unity_robotics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_unity_robotics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
)
_generate_msg_lisp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
)

### Generating Services
_generate_srv_lisp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_lisp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_lisp(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv"
  "${MSG_I_FLAGS}"
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
)

### Generating Module File
_generate_module_lisp(ros_unity_robotics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_unity_robotics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_unity_robotics_generate_messages ros_unity_robotics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_lisp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_lisp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_lisp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_lisp _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_lisp _ros_unity_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_unity_robotics_genlisp)
add_dependencies(ros_unity_robotics_genlisp ros_unity_robotics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_unity_robotics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
)
_generate_msg_nodejs(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
)

### Generating Services
_generate_srv_nodejs(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_nodejs(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_nodejs(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv"
  "${MSG_I_FLAGS}"
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
)

### Generating Module File
_generate_module_nodejs(ros_unity_robotics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_unity_robotics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_unity_robotics_generate_messages ros_unity_robotics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_nodejs _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_nodejs _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_nodejs _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_nodejs _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_nodejs _ros_unity_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_unity_robotics_gennodejs)
add_dependencies(ros_unity_robotics_gennodejs ros_unity_robotics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_unity_robotics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
)
_generate_msg_py(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
)

### Generating Services
_generate_srv_py(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_py(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
)
_generate_srv_py(ros_unity_robotics
  "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv"
  "${MSG_I_FLAGS}"
  "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
)

### Generating Module File
_generate_module_py(ros_unity_robotics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_unity_robotics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_unity_robotics_generate_messages ros_unity_robotics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Joints_State_Panda.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_py _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/Trajectory_Planner_Robot.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_py _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Robot_Joints.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_py _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/srv/SetColor.srv" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_py _ros_unity_robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/medina/ros_introduction/src/ros_unity_robotics/msg/Color_Object.msg" NAME_WE)
add_dependencies(ros_unity_robotics_generate_messages_py _ros_unity_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_unity_robotics_genpy)
add_dependencies(ros_unity_robotics_genpy ros_unity_robotics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_unity_robotics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_unity_robotics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ros_unity_robotics_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_unity_robotics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ros_unity_robotics_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(ros_unity_robotics_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_unity_robotics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ros_unity_robotics_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_unity_robotics_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ros_unity_robotics_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(ros_unity_robotics_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_unity_robotics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ros_unity_robotics_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_unity_robotics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ros_unity_robotics_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(ros_unity_robotics_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_unity_robotics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ros_unity_robotics_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_unity_robotics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ros_unity_robotics_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(ros_unity_robotics_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_unity_robotics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ros_unity_robotics_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_unity_robotics_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ros_unity_robotics_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(ros_unity_robotics_generate_messages_py moveit_msgs_generate_messages_py)
endif()
