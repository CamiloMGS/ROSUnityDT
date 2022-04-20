; Auto-generated. Do not edit!


(cl:in-package ros_unity_robotics-msg)


;//! \htmlinclude Robot_Joints.msg.html

(cl:defclass <Robot_Joints> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (final_pose
    :reader final_pose
    :initarg :final_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Robot_Joints (<Robot_Joints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Robot_Joints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Robot_Joints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-msg:<Robot_Joints> is deprecated: use ros_unity_robotics-msg:Robot_Joints instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <Robot_Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:joints-val is deprecated.  Use ros_unity_robotics-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'final_pose-val :lambda-list '(m))
(cl:defmethod final_pose-val ((m <Robot_Joints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:final_pose-val is deprecated.  Use ros_unity_robotics-msg:final_pose instead.")
  (final_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Robot_Joints>) ostream)
  "Serializes a message object of type '<Robot_Joints>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joints))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Robot_Joints>) istream)
  "Deserializes a message object of type '<Robot_Joints>"
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Robot_Joints>)))
  "Returns string type for a message object of type '<Robot_Joints>"
  "ros_unity_robotics/Robot_Joints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Robot_Joints)))
  "Returns string type for a message object of type 'Robot_Joints"
  "ros_unity_robotics/Robot_Joints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Robot_Joints>)))
  "Returns md5sum for a message object of type '<Robot_Joints>"
  "d71637ec7bc0deeb68ee5d5ebe956a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Robot_Joints)))
  "Returns md5sum for a message object of type 'Robot_Joints"
  "d71637ec7bc0deeb68ee5d5ebe956a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Robot_Joints>)))
  "Returns full string definition for message of type '<Robot_Joints>"
  (cl:format cl:nil "float64[7] joints~%geometry_msgs/Pose final_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Robot_Joints)))
  "Returns full string definition for message of type 'Robot_Joints"
  (cl:format cl:nil "float64[7] joints~%geometry_msgs/Pose final_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Robot_Joints>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Robot_Joints>))
  "Converts a ROS message object to a list"
  (cl:list 'Robot_Joints
    (cl:cons ':joints (joints msg))
    (cl:cons ':final_pose (final_pose msg))
))
