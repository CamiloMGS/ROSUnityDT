; Auto-generated. Do not edit!


(cl:in-package ros_unity_robotics-srv)


;//! \htmlinclude SetColor-request.msg.html

(cl:defclass <SetColor-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass SetColor-request (<SetColor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-srv:<SetColor-request> is deprecated: use ros_unity_robotics-srv:SetColor-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <SetColor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:object_name-val is deprecated.  Use ros_unity_robotics-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColor-request>) ostream)
  "Serializes a message object of type '<SetColor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColor-request>) istream)
  "Deserializes a message object of type '<SetColor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColor-request>)))
  "Returns string type for a service object of type '<SetColor-request>"
  "ros_unity_robotics/SetColorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColor-request)))
  "Returns string type for a service object of type 'SetColor-request"
  "ros_unity_robotics/SetColorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColor-request>)))
  "Returns md5sum for a message object of type '<SetColor-request>"
  "fbf49a4abb8329015706cddfa8925046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColor-request)))
  "Returns md5sum for a message object of type 'SetColor-request"
  "fbf49a4abb8329015706cddfa8925046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColor-request>)))
  "Returns full string definition for message of type '<SetColor-request>"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColor-request)))
  "Returns full string definition for message of type 'SetColor-request"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColor-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude SetColor-response.msg.html

(cl:defclass <SetColor-response> (roslisp-msg-protocol:ros-message)
  ((is_color_available
    :reader is_color_available
    :initarg :is_color_available
    :type cl:boolean
    :initform cl:nil)
   (set_color
    :reader set_color
    :initarg :set_color
    :type ros_unity_robotics-msg:Color_Object
    :initform (cl:make-instance 'ros_unity_robotics-msg:Color_Object)))
)

(cl:defclass SetColor-response (<SetColor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetColor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetColor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_unity_robotics-srv:<SetColor-response> is deprecated: use ros_unity_robotics-srv:SetColor-response instead.")))

(cl:ensure-generic-function 'is_color_available-val :lambda-list '(m))
(cl:defmethod is_color_available-val ((m <SetColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:is_color_available-val is deprecated.  Use ros_unity_robotics-srv:is_color_available instead.")
  (is_color_available m))

(cl:ensure-generic-function 'set_color-val :lambda-list '(m))
(cl:defmethod set_color-val ((m <SetColor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_unity_robotics-srv:set_color-val is deprecated.  Use ros_unity_robotics-srv:set_color instead.")
  (set_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetColor-response>) ostream)
  "Serializes a message object of type '<SetColor-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_color_available) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'set_color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetColor-response>) istream)
  "Deserializes a message object of type '<SetColor-response>"
    (cl:setf (cl:slot-value msg 'is_color_available) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'set_color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetColor-response>)))
  "Returns string type for a service object of type '<SetColor-response>"
  "ros_unity_robotics/SetColorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColor-response)))
  "Returns string type for a service object of type 'SetColor-response"
  "ros_unity_robotics/SetColorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetColor-response>)))
  "Returns md5sum for a message object of type '<SetColor-response>"
  "fbf49a4abb8329015706cddfa8925046")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetColor-response)))
  "Returns md5sum for a message object of type 'SetColor-response"
  "fbf49a4abb8329015706cddfa8925046")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetColor-response>)))
  "Returns full string definition for message of type '<SetColor-response>"
  (cl:format cl:nil "bool is_color_available~%Color_Object set_color~%~%~%================================================================================~%MSG: ros_unity_robotics/Color_Object~%int32 r~%int32 g~%int32 b~%int32 a~%string color_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetColor-response)))
  "Returns full string definition for message of type 'SetColor-response"
  (cl:format cl:nil "bool is_color_available~%Color_Object set_color~%~%~%================================================================================~%MSG: ros_unity_robotics/Color_Object~%int32 r~%int32 g~%int32 b~%int32 a~%string color_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetColor-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'set_color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetColor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetColor-response
    (cl:cons ':is_color_available (is_color_available msg))
    (cl:cons ':set_color (set_color msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetColor)))
  'SetColor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetColor)))
  'SetColor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetColor)))
  "Returns string type for a service object of type '<SetColor>"
  "ros_unity_robotics/SetColor")