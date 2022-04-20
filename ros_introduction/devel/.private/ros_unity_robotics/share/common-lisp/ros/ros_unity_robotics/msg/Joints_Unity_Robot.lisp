; Auto-generated. Do not edit!


(cl:in-package ros_unity_robotics-msg)


;//! \htmlinclude Joints_Unity_Robot.msg.html

(cl:defclass <Joints_Unity_Robot> (roslisp-msg-protocol:ros-message)
  ((Joints
    :reader Joints
    :initarg :Joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pick_pose
    :reader pick_pose
    :initarg :pick_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (place_pose
    :reader place_pose
    :initarg :place_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Joints_Unity_Robot (<Joints_Unity_Robot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joints_Unity_Robot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joints_Unity_Robot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-msg:<Joints_Unity_Robot> is deprecated: use ros_unity_robotics-msg:Joints_Unity_Robot instead.")))

(cl:ensure-generic-function 'Joints-val :lambda-list '(m))
(cl:defmethod Joints-val ((m <Joints_Unity_Robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:Joints-val is deprecated.  Use ros_unity_robotics-msg:Joints instead.")
  (Joints m))

(cl:ensure-generic-function 'pick_pose-val :lambda-list '(m))
(cl:defmethod pick_pose-val ((m <Joints_Unity_Robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:pick_pose-val is deprecated.  Use ros_unity_robotics-msg:pick_pose instead.")
  (pick_pose m))

(cl:ensure-generic-function 'place_pose-val :lambda-list '(m))
(cl:defmethod place_pose-val ((m <Joints_Unity_Robot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:place_pose-val is deprecated.  Use ros_unity_robotics-msg:place_pose instead.")
  (place_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joints_Unity_Robot>) ostream)
  "Serializes a message object of type '<Joints_Unity_Robot>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pick_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'place_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joints_Unity_Robot>) istream)
  "Deserializes a message object of type '<Joints_Unity_Robot>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pick_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'place_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joints_Unity_Robot>)))
  "Returns string type for a message object of type '<Joints_Unity_Robot>"
  "ros_unity_robotics/Joints_Unity_Robot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joints_Unity_Robot)))
  "Returns string type for a message object of type 'Joints_Unity_Robot"
  "ros_unity_robotics/Joints_Unity_Robot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joints_Unity_Robot>)))
  "Returns md5sum for a message object of type '<Joints_Unity_Robot>"
  "1b28a95cce78395503044b169092bcf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joints_Unity_Robot)))
  "Returns md5sum for a message object of type 'Joints_Unity_Robot"
  "1b28a95cce78395503044b169092bcf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joints_Unity_Robot>)))
  "Returns full string definition for message of type '<Joints_Unity_Robot>"
  (cl:format cl:nil "float64[] Joints~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joints_Unity_Robot)))
  "Returns full string definition for message of type 'Joints_Unity_Robot"
  (cl:format cl:nil "float64[] Joints~%geometry_msgs/Pose pick_pose~%geometry_msgs/Pose place_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joints_Unity_Robot>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pick_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'place_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joints_Unity_Robot>))
  "Converts a ROS message object to a list"
  (cl:list 'Joints_Unity_Robot
    (cl:cons ':Joints (Joints msg))
    (cl:cons ':pick_pose (pick_pose msg))
    (cl:cons ':place_pose (place_pose msg))
))
