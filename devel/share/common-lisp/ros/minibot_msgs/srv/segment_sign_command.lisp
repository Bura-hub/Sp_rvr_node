; Auto-generated. Do not edit!


(cl:in-package minibot_msgs-srv)


;//! \htmlinclude segment_sign_command-request.msg.html

(cl:defclass <segment_sign_command-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass segment_sign_command-request (<segment_sign_command-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment_sign_command-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment_sign_command-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<segment_sign_command-request> is deprecated: use minibot_msgs-srv:segment_sign_command-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <segment_sign_command-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minibot_msgs-srv:command-val is deprecated.  Use minibot_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<segment_sign_command-request>)))
    "Constants for message type '<segment_sign_command-request>"
  '((:PERSISTENT_SAVE . 0)
    (:TOGGLE_PATCH_VISUALIZATION . 1)
    (:LOAD_DEFAULT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'segment_sign_command-request)))
    "Constants for message type 'segment_sign_command-request"
  '((:PERSISTENT_SAVE . 0)
    (:TOGGLE_PATCH_VISUALIZATION . 1)
    (:LOAD_DEFAULT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment_sign_command-request>) ostream)
  "Serializes a message object of type '<segment_sign_command-request>"
  (cl:let* ((signed (cl:slot-value msg 'command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment_sign_command-request>) istream)
  "Deserializes a message object of type '<segment_sign_command-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment_sign_command-request>)))
  "Returns string type for a service object of type '<segment_sign_command-request>"
  "minibot_msgs/segment_sign_commandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_sign_command-request)))
  "Returns string type for a service object of type 'segment_sign_command-request"
  "minibot_msgs/segment_sign_commandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment_sign_command-request>)))
  "Returns md5sum for a message object of type '<segment_sign_command-request>"
  "67dfdadbbb6dd9ac14fa405e04acf5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment_sign_command-request)))
  "Returns md5sum for a message object of type 'segment_sign_command-request"
  "67dfdadbbb6dd9ac14fa405e04acf5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment_sign_command-request>)))
  "Returns full string definition for message of type '<segment_sign_command-request>"
  (cl:format cl:nil "int8 PERSISTENT_SAVE=0~%int8 TOGGLE_PATCH_VISUALIZATION=1~%int8 LOAD_DEFAULT=2~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment_sign_command-request)))
  "Returns full string definition for message of type 'segment_sign_command-request"
  (cl:format cl:nil "int8 PERSISTENT_SAVE=0~%int8 TOGGLE_PATCH_VISUALIZATION=1~%int8 LOAD_DEFAULT=2~%~%int8 command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment_sign_command-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment_sign_command-request>))
  "Converts a ROS message object to a list"
  (cl:list 'segment_sign_command-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude segment_sign_command-response.msg.html

(cl:defclass <segment_sign_command-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass segment_sign_command-response (<segment_sign_command-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <segment_sign_command-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'segment_sign_command-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<segment_sign_command-response> is deprecated: use minibot_msgs-srv:segment_sign_command-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <segment_sign_command-response>) ostream)
  "Serializes a message object of type '<segment_sign_command-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <segment_sign_command-response>) istream)
  "Deserializes a message object of type '<segment_sign_command-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<segment_sign_command-response>)))
  "Returns string type for a service object of type '<segment_sign_command-response>"
  "minibot_msgs/segment_sign_commandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_sign_command-response)))
  "Returns string type for a service object of type 'segment_sign_command-response"
  "minibot_msgs/segment_sign_commandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<segment_sign_command-response>)))
  "Returns md5sum for a message object of type '<segment_sign_command-response>"
  "67dfdadbbb6dd9ac14fa405e04acf5b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'segment_sign_command-response)))
  "Returns md5sum for a message object of type 'segment_sign_command-response"
  "67dfdadbbb6dd9ac14fa405e04acf5b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<segment_sign_command-response>)))
  "Returns full string definition for message of type '<segment_sign_command-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'segment_sign_command-response)))
  "Returns full string definition for message of type 'segment_sign_command-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <segment_sign_command-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <segment_sign_command-response>))
  "Converts a ROS message object to a list"
  (cl:list 'segment_sign_command-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'segment_sign_command)))
  'segment_sign_command-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'segment_sign_command)))
  'segment_sign_command-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'segment_sign_command)))
  "Returns string type for a service object of type '<segment_sign_command>"
  "minibot_msgs/segment_sign_command")