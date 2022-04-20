;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::Trajectory_Planner_Robot)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'Trajectory_Planner_Robot (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOT")
  (make-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOT"))
(unless (find-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOTREQUEST")
  (make-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOTREQUEST"))
(unless (find-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOTRESPONSE")
  (make-package "ROS_UNITY_ROBOTICS::TRAJECTORY_PLANNER_ROBOTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(defclass ros_unity_robotics::Trajectory_Planner_RobotRequest
  :super ros::object
  :slots (_joints_input _target_pose ))

(defmethod ros_unity_robotics::Trajectory_Planner_RobotRequest
  (:init
   (&key
    ((:joints_input __joints_input) (instance ros_unity_robotics::Robot_Joints :init))
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _joints_input __joints_input)
   (setq _target_pose __target_pose)
   self)
  (:joints_input
   (&rest __joints_input)
   (if (keywordp (car __joints_input))
       (send* _joints_input __joints_input)
     (progn
       (if __joints_input (setq _joints_input (car __joints_input)))
       _joints_input)))
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; ros_unity_robotics/Robot_Joints _joints_input
    (send _joints_input :serialization-length)
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_unity_robotics/Robot_Joints _joints_input
       (send _joints_input :serialize s)
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_unity_robotics/Robot_Joints _joints_input
     (send _joints_input :deserialize buf ptr-) (incf ptr- (send _joints_input :serialization-length))
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass ros_unity_robotics::Trajectory_Planner_RobotResponse
  :super ros::object
  :slots (_trajectories ))

(defmethod ros_unity_robotics::Trajectory_Planner_RobotResponse
  (:init
   (&key
    ((:trajectories __trajectories) (let (r) (dotimes (i 0) (push (instance moveit_msgs::RobotTrajectory :init) r)) r))
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:serialization-length
   ()
   (+
    ;; moveit_msgs/RobotTrajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; moveit_msgs/RobotTrajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; moveit_msgs/RobotTrajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance moveit_msgs::RobotTrajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_unity_robotics::Trajectory_Planner_Robot
  :super ros::object
  :slots ())

(setf (get ros_unity_robotics::Trajectory_Planner_Robot :md5sum-) "21c74ee74be8fa8772be222ac6c4b3c3")
(setf (get ros_unity_robotics::Trajectory_Planner_Robot :datatype-) "ros_unity_robotics/Trajectory_Planner_Robot")
(setf (get ros_unity_robotics::Trajectory_Planner_Robot :request) ros_unity_robotics::Trajectory_Planner_RobotRequest)
(setf (get ros_unity_robotics::Trajectory_Planner_Robot :response) ros_unity_robotics::Trajectory_Planner_RobotResponse)

(defmethod ros_unity_robotics::Trajectory_Planner_RobotRequest
  (:response () (instance ros_unity_robotics::Trajectory_Planner_RobotResponse :init)))

(setf (get ros_unity_robotics::Trajectory_Planner_RobotRequest :md5sum-) "21c74ee74be8fa8772be222ac6c4b3c3")
(setf (get ros_unity_robotics::Trajectory_Planner_RobotRequest :datatype-) "ros_unity_robotics/Trajectory_Planner_RobotRequest")
(setf (get ros_unity_robotics::Trajectory_Planner_RobotRequest :definition-)
      "Robot_Joints joints_input
geometry_msgs/Pose target_pose

================================================================================
MSG: ros_unity_robotics/Robot_Joints
float64[7] joints
geometry_msgs/Pose final_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
moveit_msgs/RobotTrajectory[] trajectories


================================================================================
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")

(setf (get ros_unity_robotics::Trajectory_Planner_RobotResponse :md5sum-) "21c74ee74be8fa8772be222ac6c4b3c3")
(setf (get ros_unity_robotics::Trajectory_Planner_RobotResponse :datatype-) "ros_unity_robotics/Trajectory_Planner_RobotResponse")
(setf (get ros_unity_robotics::Trajectory_Planner_RobotResponse :definition-)
      "Robot_Joints joints_input
geometry_msgs/Pose target_pose

================================================================================
MSG: ros_unity_robotics/Robot_Joints
float64[7] joints
geometry_msgs/Pose final_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
moveit_msgs/RobotTrajectory[] trajectories


================================================================================
MSG: moveit_msgs/RobotTrajectory
trajectory_msgs/JointTrajectory joint_trajectory
trajectory_msgs/MultiDOFJointTrajectory multi_dof_joint_trajectory

================================================================================
MSG: trajectory_msgs/JointTrajectory
Header header
string[] joint_names
JointTrajectoryPoint[] points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectory
# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular
")



(provide :ros_unity_robotics/Trajectory_Planner_Robot "21c74ee74be8fa8772be222ac6c4b3c3")


