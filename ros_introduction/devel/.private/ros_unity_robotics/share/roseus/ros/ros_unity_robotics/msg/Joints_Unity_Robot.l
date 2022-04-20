;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::Joints_Unity_Robot)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'Joints_Unity_Robot (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::JOINTS_UNITY_ROBOT")
  (make-package "ROS_UNITY_ROBOTICS::JOINTS_UNITY_ROBOT"))

(in-package "ROS")
;;//! \htmlinclude Joints_Unity_Robot.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_unity_robotics::Joints_Unity_Robot
  :super ros::object
  :slots (_Joints _pick_pose _place_pose ))

(defmethod ros_unity_robotics::Joints_Unity_Robot
  (:init
   (&key
    ((:Joints __Joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pick_pose __pick_pose) (instance geometry_msgs::Pose :init))
    ((:place_pose __place_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _Joints __Joints)
   (setq _pick_pose __pick_pose)
   (setq _place_pose __place_pose)
   self)
  (:Joints
   (&optional __Joints)
   (if __Joints (setq _Joints __Joints)) _Joints)
  (:pick_pose
   (&rest __pick_pose)
   (if (keywordp (car __pick_pose))
       (send* _pick_pose __pick_pose)
     (progn
       (if __pick_pose (setq _pick_pose (car __pick_pose)))
       _pick_pose)))
  (:place_pose
   (&rest __place_pose)
   (if (keywordp (car __place_pose))
       (send* _place_pose __place_pose)
     (progn
       (if __place_pose (setq _place_pose (car __place_pose)))
       _place_pose)))
  (:serialization-length
   ()
   (+
    ;; float64[] _Joints
    (* 8    (length _Joints)) 4
    ;; geometry_msgs/Pose _pick_pose
    (send _pick_pose :serialization-length)
    ;; geometry_msgs/Pose _place_pose
    (send _place_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _Joints
     (write-long (length _Joints) s)
     (dotimes (i (length _Joints))
       (sys::poke (elt _Joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _pick_pose
       (send _pick_pose :serialize s)
     ;; geometry_msgs/Pose _place_pose
       (send _place_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _Joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _Joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _pick_pose
     (send _pick_pose :deserialize buf ptr-) (incf ptr- (send _pick_pose :serialization-length))
   ;; geometry_msgs/Pose _place_pose
     (send _place_pose :deserialize buf ptr-) (incf ptr- (send _place_pose :serialization-length))
   ;;
   self)
  )

(setf (get ros_unity_robotics::Joints_Unity_Robot :md5sum-) "1b28a95cce78395503044b169092bcf3")
(setf (get ros_unity_robotics::Joints_Unity_Robot :datatype-) "ros_unity_robotics/Joints_Unity_Robot")
(setf (get ros_unity_robotics::Joints_Unity_Robot :definition-)
      "float64[] Joints
geometry_msgs/Pose pick_pose
geometry_msgs/Pose place_pose

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



(provide :ros_unity_robotics/Joints_Unity_Robot "1b28a95cce78395503044b169092bcf3")


