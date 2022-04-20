;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::SetColor)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'SetColor (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::SETCOLOR")
  (make-package "ROS_UNITY_ROBOTICS::SETCOLOR"))
(unless (find-package "ROS_UNITY_ROBOTICS::SETCOLORREQUEST")
  (make-package "ROS_UNITY_ROBOTICS::SETCOLORREQUEST"))
(unless (find-package "ROS_UNITY_ROBOTICS::SETCOLORRESPONSE")
  (make-package "ROS_UNITY_ROBOTICS::SETCOLORRESPONSE"))

(in-package "ROS")





(defclass ros_unity_robotics::SetColorRequest
  :super ros::object
  :slots (_object_name ))

(defmethod ros_unity_robotics::SetColorRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_unity_robotics::SetColorResponse
  :super ros::object
  :slots (_is_color_available _set_color ))

(defmethod ros_unity_robotics::SetColorResponse
  (:init
   (&key
    ((:is_color_available __is_color_available) nil)
    ((:set_color __set_color) (instance ros_unity_robotics::Color_Object :init))
    )
   (send-super :init)
   (setq _is_color_available __is_color_available)
   (setq _set_color __set_color)
   self)
  (:is_color_available
   (&optional __is_color_available)
   (if __is_color_available (setq _is_color_available __is_color_available)) _is_color_available)
  (:set_color
   (&rest __set_color)
   (if (keywordp (car __set_color))
       (send* _set_color __set_color)
     (progn
       (if __set_color (setq _set_color (car __set_color)))
       _set_color)))
  (:serialization-length
   ()
   (+
    ;; bool _is_color_available
    1
    ;; ros_unity_robotics/Color_Object _set_color
    (send _set_color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_color_available
       (if _is_color_available (write-byte -1 s) (write-byte 0 s))
     ;; ros_unity_robotics/Color_Object _set_color
       (send _set_color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_color_available
     (setq _is_color_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_unity_robotics/Color_Object _set_color
     (send _set_color :deserialize buf ptr-) (incf ptr- (send _set_color :serialization-length))
   ;;
   self)
  )

(defclass ros_unity_robotics::SetColor
  :super ros::object
  :slots ())

(setf (get ros_unity_robotics::SetColor :md5sum-) "fbf49a4abb8329015706cddfa8925046")
(setf (get ros_unity_robotics::SetColor :datatype-) "ros_unity_robotics/SetColor")
(setf (get ros_unity_robotics::SetColor :request) ros_unity_robotics::SetColorRequest)
(setf (get ros_unity_robotics::SetColor :response) ros_unity_robotics::SetColorResponse)

(defmethod ros_unity_robotics::SetColorRequest
  (:response () (instance ros_unity_robotics::SetColorResponse :init)))

(setf (get ros_unity_robotics::SetColorRequest :md5sum-) "fbf49a4abb8329015706cddfa8925046")
(setf (get ros_unity_robotics::SetColorRequest :datatype-) "ros_unity_robotics/SetColorRequest")
(setf (get ros_unity_robotics::SetColorRequest :definition-)
      "string object_name
---
bool is_color_available
Color_Object set_color


================================================================================
MSG: ros_unity_robotics/Color_Object
int32 r
int32 g
int32 b
int32 a
string color_name
")

(setf (get ros_unity_robotics::SetColorResponse :md5sum-) "fbf49a4abb8329015706cddfa8925046")
(setf (get ros_unity_robotics::SetColorResponse :datatype-) "ros_unity_robotics/SetColorResponse")
(setf (get ros_unity_robotics::SetColorResponse :definition-)
      "string object_name
---
bool is_color_available
Color_Object set_color


================================================================================
MSG: ros_unity_robotics/Color_Object
int32 r
int32 g
int32 b
int32 a
string color_name
")



(provide :ros_unity_robotics/SetColor "fbf49a4abb8329015706cddfa8925046")


