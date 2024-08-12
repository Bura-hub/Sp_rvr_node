; Auto-generated. Do not edit!


(cl:in-package minibot_msgs-srv)


;//! \htmlinclude set_url-request.msg.html

(cl:defclass <set_url-request> (roslisp-msg-protocol:ros-message)
  ((url
    :reader url
    :initarg :url
    :type cl:string
    :initform ""))
)

(cl:defclass set_url-request (<set_url-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_url-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_url-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<set_url-request> is deprecated: use minibot_msgs-srv:set_url-request instead.")))

(cl:ensure-generic-function 'url-val :lambda-list '(m))
(cl:defmethod url-val ((m <set_url-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minibot_msgs-srv:url-val is deprecated.  Use minibot_msgs-srv:url instead.")
  (url m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_url-request>) ostream)
  "Serializes a message object of type '<set_url-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'url))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'url))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_url-request>) istream)
  "Deserializes a message object of type '<set_url-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'url) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'url) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_url-request>)))
  "Returns string type for a service object of type '<set_url-request>"
  "minibot_msgs/set_urlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_url-request)))
  "Returns string type for a service object of type 'set_url-request"
  "minibot_msgs/set_urlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_url-request>)))
  "Returns md5sum for a message object of type '<set_url-request>"
  "5a074a836c82adf8b27a048ee31b3a82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_url-request)))
  "Returns md5sum for a message object of type 'set_url-request"
  "5a074a836c82adf8b27a048ee31b3a82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_url-request>)))
  "Returns full string definition for message of type '<set_url-request>"
  (cl:format cl:nil "string url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_url-request)))
  "Returns full string definition for message of type 'set_url-request"
  (cl:format cl:nil "string url~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_url-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'url))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_url-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_url-request
    (cl:cons ':url (url msg))
))
;//! \htmlinclude set_url-response.msg.html

(cl:defclass <set_url-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_url-response (<set_url-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_url-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_url-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<set_url-response> is deprecated: use minibot_msgs-srv:set_url-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_url-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minibot_msgs-srv:success-val is deprecated.  Use minibot_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_url-response>) ostream)
  "Serializes a message object of type '<set_url-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_url-response>) istream)
  "Deserializes a message object of type '<set_url-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_url-response>)))
  "Returns string type for a service object of type '<set_url-response>"
  "minibot_msgs/set_urlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_url-response)))
  "Returns string type for a service object of type 'set_url-response"
  "minibot_msgs/set_urlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_url-response>)))
  "Returns md5sum for a message object of type '<set_url-response>"
  "5a074a836c82adf8b27a048ee31b3a82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_url-response)))
  "Returns md5sum for a message object of type 'set_url-response"
  "5a074a836c82adf8b27a048ee31b3a82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_url-response>)))
  "Returns full string definition for message of type '<set_url-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_url-response)))
  "Returns full string definition for message of type 'set_url-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_url-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_url-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_url-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_url)))
  'set_url-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_url)))
  'set_url-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_url)))
  "Returns string type for a service object of type '<set_url>"
  "minibot_msgs/set_url")