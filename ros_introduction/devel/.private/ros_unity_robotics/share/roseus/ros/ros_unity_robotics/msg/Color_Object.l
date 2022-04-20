;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::Color_Object)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'Color_Object (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::COLOR_OBJECT")
  (make-package "ROS_UNITY_ROBOTICS::COLOR_OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Color_Object.msg.html


(defclass ros_unity_robotics::Color_Object
  :super ros::object
  :slots (_r _g _b _a _color_name ))

(defmethod ros_unity_robotics::Color_Object
  (:init
   (&key
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    ((:a __a) 0)
    ((:color_name __color_name) "")
    )
   (send-super :init)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   (setq _a (round __a))
   (setq _color_name (string __color_name))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:color_name
   (&optional __color_name)
   (if __color_name (setq _color_name __color_name)) _color_name)
  (:serialization-length
   ()
   (+
    ;; int32 _r
    4
    ;; int32 _g
    4
    ;; int32 _b
    4
    ;; int32 _a
    4
    ;; string _color_name
    4 (length _color_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _r
       (write-long _r s)
     ;; int32 _g
       (write-long _g s)
     ;; int32 _b
       (write-long _b s)
     ;; int32 _a
       (write-long _a s)
     ;; string _color_name
       (write-long (length _color_name) s) (princ _color_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g
     (setq _g (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _color_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_unity_robotics::Color_Object :md5sum-) "7ed8425fc1461c60d2beb39175943ef9")
(setf (get ros_unity_robotics::Color_Object :datatype-) "ros_unity_robotics/Color_Object")
(setf (get ros_unity_robotics::Color_Object :definition-)
      "int32 r
int32 g
int32 b
int32 a
string color_name

")



(provide :ros_unity_robotics/Color_Object "7ed8425fc1461c60d2beb39175943ef9")


