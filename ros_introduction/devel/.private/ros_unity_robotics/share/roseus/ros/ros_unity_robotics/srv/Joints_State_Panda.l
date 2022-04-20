;; Auto-generated. Do not edit!


(when (boundp 'ros_unity_robotics::Joints_State_Panda)
  (if (not (find-package "ROS_UNITY_ROBOTICS"))
    (make-package "ROS_UNITY_ROBOTICS"))
  (shadow 'Joints_State_Panda (find-package "ROS_UNITY_ROBOTICS")))
(unless (find-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDA")
  (make-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDA"))
(unless (find-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDAREQUEST")
  (make-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDAREQUEST"))
(unless (find-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDARESPONSE")
  (make-package "ROS_UNITY_ROBOTICS::JOINTS_STATE_PANDARESPONSE"))

(in-package "ROS")





(defclass ros_unity_robotics::Joints_State_PandaRequest
  :super ros::object
  :slots (_name ))

(defmethod ros_unity_robotics::Joints_State_PandaRequest
  (:init
   (&key
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name __name)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass ros_unity_robotics::Joints_State_PandaResponse
  :super ros::object
  :slots (_found _position ))

(defmethod ros_unity_robotics::Joints_State_PandaResponse
  (:init
   (&key
    ((:found __found) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _found __found)
   (setq _position __position)
   self)
  (:found
   (&optional __found)
   (if __found (setq _found __found)) _found)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; uint32[] _found
    (* 4    (length _found)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _found
     (write-long (length _found) s)
     (dotimes (i (length _found))
       (write-long (elt _found i) s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _found
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _found (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _found i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass ros_unity_robotics::Joints_State_Panda
  :super ros::object
  :slots ())

(setf (get ros_unity_robotics::Joints_State_Panda :md5sum-) "4d4ae00253742627cd925fe537e1f8dd")
(setf (get ros_unity_robotics::Joints_State_Panda :datatype-) "ros_unity_robotics/Joints_State_Panda")
(setf (get ros_unity_robotics::Joints_State_Panda :request) ros_unity_robotics::Joints_State_PandaRequest)
(setf (get ros_unity_robotics::Joints_State_Panda :response) ros_unity_robotics::Joints_State_PandaResponse)

(defmethod ros_unity_robotics::Joints_State_PandaRequest
  (:response () (instance ros_unity_robotics::Joints_State_PandaResponse :init)))

(setf (get ros_unity_robotics::Joints_State_PandaRequest :md5sum-) "4d4ae00253742627cd925fe537e1f8dd")
(setf (get ros_unity_robotics::Joints_State_PandaRequest :datatype-) "ros_unity_robotics/Joints_State_PandaRequest")
(setf (get ros_unity_robotics::Joints_State_PandaRequest :definition-)
      "string[] name
---
uint32[] found
float64[] position

")

(setf (get ros_unity_robotics::Joints_State_PandaResponse :md5sum-) "4d4ae00253742627cd925fe537e1f8dd")
(setf (get ros_unity_robotics::Joints_State_PandaResponse :datatype-) "ros_unity_robotics/Joints_State_PandaResponse")
(setf (get ros_unity_robotics::Joints_State_PandaResponse :definition-)
      "string[] name
---
uint32[] found
float64[] position

")



(provide :ros_unity_robotics/Joints_State_Panda "4d4ae00253742627cd925fe537e1f8dd")


