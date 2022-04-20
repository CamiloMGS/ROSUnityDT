;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::Robot_Joints)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'Robot_Joints (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::ROBOT_JOINTS")
  (make-package "ROS_UNITY_ROBOTICS::ROBOT_JOINTS"))

(in-package "ROS")
;;//! \htmlinclude Robot_Joints.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_unity_robotics::Robot_Joints
  :super ros::object
  :slots (_joints _final_pose ))

(defmethod ros_unity_robotics::Robot_Joints
  (:init
   (&key
    ((:joints __joints) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:final_pose __final_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _final_pose __final_pose)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:final_pose
   (&rest __final_pose)
   (if (keywordp (car __final_pose))
       (send* _final_pose __final_pose)
     (progn
       (if __final_pose (setq _final_pose (car __final_pose)))
       _final_pose)))
  (:serialization-length
   ()
   (+
    ;; float64[7] _joints
    (* 8    7)
    ;; geometry_msgs/Pose _final_pose
    (send _final_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[7] _joints
     (dotimes (i 7)
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _final_pose
       (send _final_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[7] _joints
   (dotimes (i (length _joints))
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Pose _final_pose
     (send _final_pose :deserialize buf ptr-) (incf ptr- (send _final_pose :serialization-length))
   ;;
   self)
  )

(setf (get ros_unity_robotics::Robot_Joints :md5sum-) "d71637ec7bc0deeb68ee5d5ebe956a0e")
(setf (get ros_unity_robotics::Robot_Joints :datatype-) "ros_unity_robotics/Robot_Joints")
(setf (get ros_unity_robotics::Robot_Joints :definition-)
      "float64[7] joints
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

")



(provide :ros_unity_robotics/Robot_Joints "d71637ec7bc0deeb68ee5d5ebe956a0e")


