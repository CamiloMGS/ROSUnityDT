; Auto-generated. Do not edit!


(cl:in-package ros_unity_robotics-srv)


;//! \htmlinclude Joints_State_Panda-request.msg.html

(cl:defclass <Joints_State_Panda-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Joints_State_Panda-request (<Joints_State_Panda-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joints_State_Panda-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joints_State_Panda-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-srv:<Joints_State_Panda-request> is deprecated: use ros_unity_robotics-srv:Joints_State_Panda-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Joints_State_Panda-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:name-val is deprecated.  Use ros_unity_robotics-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joints_State_Panda-request>) ostream)
  "Serializes a message object of type '<Joints_State_Panda-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joints_State_Panda-request>) istream)
  "Deserializes a message object of type '<Joints_State_Panda-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joints_State_Panda-request>)))
  "Returns string type for a service object of type '<Joints_State_Panda-request>"
  "ros_unity_robotics/Joints_State_PandaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joints_State_Panda-request)))
  "Returns string type for a service object of type 'Joints_State_Panda-request"
  "ros_unity_robotics/Joints_State_PandaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joints_State_Panda-request>)))
  "Returns md5sum for a message object of type '<Joints_State_Panda-request>"
  "4d4ae00253742627cd925fe537e1f8dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joints_State_Panda-request)))
  "Returns md5sum for a message object of type 'Joints_State_Panda-request"
  "4d4ae00253742627cd925fe537e1f8dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joints_State_Panda-request>)))
  "Returns full string definition for message of type '<Joints_State_Panda-request>"
  (cl:format cl:nil "string[] name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joints_State_Panda-request)))
  "Returns full string definition for message of type 'Joints_State_Panda-request"
  (cl:format cl:nil "string[] name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joints_State_Panda-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joints_State_Panda-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Joints_State_Panda-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Joints_State_Panda-response.msg.html

(cl:defclass <Joints_State_Panda-response> (roslisp-msg-protocol:ros-message)
  ((found
    :reader found
    :initarg :found
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Joints_State_Panda-response (<Joints_State_Panda-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Joints_State_Panda-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Joints_State_Panda-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-srv:<Joints_State_Panda-response> is deprecated: use ros_unity_robotics-srv:Joints_State_Panda-response instead.")))

(cl:ensure-generic-function 'found-val :lambda-list '(m))
(cl:defmethod found-val ((m <Joints_State_Panda-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:found-val is deprecated.  Use ros_unity_robotics-srv:found instead.")
  (found m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Joints_State_Panda-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:position-val is deprecated.  Use ros_unity_robotics-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Joints_State_Panda-response>) ostream)
  "Serializes a message object of type '<Joints_State_Panda-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'found))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'found))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position))))
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
   (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Joints_State_Panda-response>) istream)
  "Deserializes a message object of type '<Joints_State_Panda-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'found) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'found)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Joints_State_Panda-response>)))
  "Returns string type for a service object of type '<Joints_State_Panda-response>"
  "ros_unity_robotics/Joints_State_PandaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joints_State_Panda-response)))
  "Returns string type for a service object of type 'Joints_State_Panda-response"
  "ros_unity_robotics/Joints_State_PandaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Joints_State_Panda-response>)))
  "Returns md5sum for a message object of type '<Joints_State_Panda-response>"
  "4d4ae00253742627cd925fe537e1f8dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Joints_State_Panda-response)))
  "Returns md5sum for a message object of type 'Joints_State_Panda-response"
  "4d4ae00253742627cd925fe537e1f8dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Joints_State_Panda-response>)))
  "Returns full string definition for message of type '<Joints_State_Panda-response>"
  (cl:format cl:nil "uint32[] found~%float64[] position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Joints_State_Panda-response)))
  "Returns full string definition for message of type 'Joints_State_Panda-response"
  (cl:format cl:nil "uint32[] found~%float64[] position~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Joints_State_Panda-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'found) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Joints_State_Panda-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Joints_State_Panda-response
    (cl:cons ':found (found msg))
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Joints_State_Panda)))
  'Joints_State_Panda-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Joints_State_Panda)))
  'Joints_State_Panda-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Joints_State_Panda)))
  "Returns string type for a service object of type '<Joints_State_Panda>"
  "ros_unity_robotics/Joints_State_Panda")