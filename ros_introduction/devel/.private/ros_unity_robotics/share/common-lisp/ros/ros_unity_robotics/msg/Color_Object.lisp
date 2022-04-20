; Auto-generated. Do not edit!


(cl:in-package ros_unity_robotics-msg)


;//! \htmlinclude Color_Object.msg.html

(cl:defclass <Color_Object> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:integer
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (color_name
    :reader color_name
    :initarg :color_name
    :type cl:string
    :initform ""))
)

(cl:defclass Color_Object (<Color_Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Color_Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Color_Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-msg:<Color_Object> is deprecated: use ros_unity_robotics-msg:Color_Object instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <Color_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:r-val is deprecated.  Use ros_unity_robotics-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <Color_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:g-val is deprecated.  Use ros_unity_robotics-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Color_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:b-val is deprecated.  Use ros_unity_robotics-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Color_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:a-val is deprecated.  Use ros_unity_robotics-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'color_name-val :lambda-list '(m))
(cl:defmethod color_name-val ((m <Color_Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-msg:color_name-val is deprecated.  Use ros_unity_robotics-msg:color_name instead.")
  (color_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Color_Object>) ostream)
  "Serializes a message object of type '<Color_Object>"
  (cl:let* ((signed (cl:slot-value msg 'r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Color_Object>) istream)
  "Deserializes a message object of type '<Color_Object>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Color_Object>)))
  "Returns string type for a message object of type '<Color_Object>"
  "ros_unity_robotics/Color_Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Color_Object)))
  "Returns string type for a message object of type 'Color_Object"
  "ros_unity_robotics/Color_Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Color_Object>)))
  "Returns md5sum for a message object of type '<Color_Object>"
  "7ed8425fc1461c60d2beb39175943ef9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Color_Object)))
  "Returns md5sum for a message object of type 'Color_Object"
  "7ed8425fc1461c60d2beb39175943ef9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Color_Object>)))
  "Returns full string definition for message of type '<Color_Object>"
  (cl:format cl:nil "int32 r~%int32 g~%int32 b~%int32 a~%string color_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Color_Object)))
  "Returns full string definition for message of type 'Color_Object"
  (cl:format cl:nil "int32 r~%int32 g~%int32 b~%int32 a~%string color_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Color_Object>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'color_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Color_Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Color_Object
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
    (cl:cons ':a (a msg))
    (cl:cons ':color_name (color_name msg))
))
