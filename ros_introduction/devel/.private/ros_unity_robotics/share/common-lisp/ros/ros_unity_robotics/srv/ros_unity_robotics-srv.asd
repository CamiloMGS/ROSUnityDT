
(cl:in-package :asdf)

(defsystem "ros_unity_robotics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
               :ros_unity_robotics-msg
)
  :components ((:file "_package")
    (:file "Joints_State_Panda" :depends-on ("_package_Joints_State_Panda"))
    (:file "_package_Joints_State_Panda" :depends-on ("_package"))
    (:file "SetColor" :depends-on ("_package_SetColor"))
    (:file "_package_SetColor" :depends-on ("_package"))
    (:file "Trajectory_Planner_Robot" :depends-on ("_package_Trajectory_Planner_Robot"))
    (:file "_package_Trajectory_Planner_Robot" :depends-on ("_package"))
  ))