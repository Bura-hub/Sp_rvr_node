; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude BatteryState-request.msg.html

(cl:defclass <BatteryState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BatteryState-request (<BatteryState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<BatteryState-request> is deprecated: use sphero_rvr_msgs-srv:BatteryState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState-request>) ostream)
  "Serializes a message object of type '<BatteryState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState-request>) istream)
  "Deserializes a message object of type '<BatteryState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState-request>)))
  "Returns string type for a service object of type '<BatteryState-request>"
  "sphero_rvr_msgs/BatteryStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState-request)))
  "Returns string type for a service object of type 'BatteryState-request"
  "sphero_rvr_msgs/BatteryStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState-request>)))
  "Returns md5sum for a message object of type '<BatteryState-request>"
  "befe44135dbb4e3ba48bf2536ab69b80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState-request)))
  "Returns md5sum for a message object of type 'BatteryState-request"
  "befe44135dbb4e3ba48bf2536ab69b80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState-request>)))
  "Returns full string definition for message of type '<BatteryState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState-request)))
  "Returns full string definition for message of type 'BatteryState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState-request
))
;//! \htmlinclude BatteryState-response.msg.html

(cl:defclass <BatteryState-response> (roslisp-msg-protocol:ros-message)
  ((battery_percentage
    :reader battery_percentage
    :initarg :battery_percentage
    :type cl:fixnum
    :initform 0)
   (voltage_state
    :reader voltage_state
    :initarg :voltage_state
    :type cl:string
    :initform ""))
)

(cl:defclass BatteryState-response (<BatteryState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<BatteryState-response> is deprecated: use sphero_rvr_msgs-srv:BatteryState-response instead.")))

(cl:ensure-generic-function 'battery_percentage-val :lambda-list '(m))
(cl:defmethod battery_percentage-val ((m <BatteryState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:battery_percentage-val is deprecated.  Use sphero_rvr_msgs-srv:battery_percentage instead.")
  (battery_percentage m))

(cl:ensure-generic-function 'voltage_state-val :lambda-list '(m))
(cl:defmethod voltage_state-val ((m <BatteryState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:voltage_state-val is deprecated.  Use sphero_rvr_msgs-srv:voltage_state instead.")
  (voltage_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState-response>) ostream)
  "Serializes a message object of type '<BatteryState-response>"
  (cl:let* ((signed (cl:slot-value msg 'battery_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'voltage_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'voltage_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState-response>) istream)
  "Deserializes a message object of type '<BatteryState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'voltage_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState-response>)))
  "Returns string type for a service object of type '<BatteryState-response>"
  "sphero_rvr_msgs/BatteryStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState-response)))
  "Returns string type for a service object of type 'BatteryState-response"
  "sphero_rvr_msgs/BatteryStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState-response>)))
  "Returns md5sum for a message object of type '<BatteryState-response>"
  "befe44135dbb4e3ba48bf2536ab69b80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState-response)))
  "Returns md5sum for a message object of type 'BatteryState-response"
  "befe44135dbb4e3ba48bf2536ab69b80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState-response>)))
  "Returns full string definition for message of type '<BatteryState-response>"
  (cl:format cl:nil "int8 battery_percentage~%# available states are [unknown, ok, low, critical]~%string voltage_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState-response)))
  "Returns full string definition for message of type 'BatteryState-response"
  (cl:format cl:nil "int8 battery_percentage~%# available states are [unknown, ok, low, critical]~%string voltage_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'voltage_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState-response
    (cl:cons ':battery_percentage (battery_percentage msg))
    (cl:cons ':voltage_state (voltage_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BatteryState)))
  'BatteryState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BatteryState)))
  'BatteryState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a service object of type '<BatteryState>"
  "sphero_rvr_msgs/BatteryState")