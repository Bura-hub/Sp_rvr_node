; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude TriggerLedEvent-request.msg.html

(cl:defclass <TriggerLedEvent-request> (roslisp-msg-protocol:ros-message)
  ((stop_current_event
    :reader stop_current_event
    :initarg :stop_current_event
    :type cl:boolean
    :initform cl:nil)
   (event_id
    :reader event_id
    :initarg :event_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TriggerLedEvent-request (<TriggerLedEvent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerLedEvent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerLedEvent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<TriggerLedEvent-request> is deprecated: use sphero_rvr_msgs-srv:TriggerLedEvent-request instead.")))

(cl:ensure-generic-function 'stop_current_event-val :lambda-list '(m))
(cl:defmethod stop_current_event-val ((m <TriggerLedEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:stop_current_event-val is deprecated.  Use sphero_rvr_msgs-srv:stop_current_event instead.")
  (stop_current_event m))

(cl:ensure-generic-function 'event_id-val :lambda-list '(m))
(cl:defmethod event_id-val ((m <TriggerLedEvent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:event_id-val is deprecated.  Use sphero_rvr_msgs-srv:event_id instead.")
  (event_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TriggerLedEvent-request>)))
    "Constants for message type '<TriggerLedEvent-request>"
  '((:STARTUP . 1)
    (:EMERGENCY_STOP . 2)
    (:START_DRIVING . 3)
    (:ERROR . 4)
    (:VISION_STARTUP . 5)
    (:DOWNLOAD_MODEL . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TriggerLedEvent-request)))
    "Constants for message type 'TriggerLedEvent-request"
  '((:STARTUP . 1)
    (:EMERGENCY_STOP . 2)
    (:START_DRIVING . 3)
    (:ERROR . 4)
    (:VISION_STARTUP . 5)
    (:DOWNLOAD_MODEL . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerLedEvent-request>) ostream)
  "Serializes a message object of type '<TriggerLedEvent-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_current_event) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'event_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerLedEvent-request>) istream)
  "Deserializes a message object of type '<TriggerLedEvent-request>"
    (cl:setf (cl:slot-value msg 'stop_current_event) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerLedEvent-request>)))
  "Returns string type for a service object of type '<TriggerLedEvent-request>"
  "sphero_rvr_msgs/TriggerLedEventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerLedEvent-request)))
  "Returns string type for a service object of type 'TriggerLedEvent-request"
  "sphero_rvr_msgs/TriggerLedEventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerLedEvent-request>)))
  "Returns md5sum for a message object of type '<TriggerLedEvent-request>"
  "519781bfa3d7486c726f766b0ca6f430")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerLedEvent-request)))
  "Returns md5sum for a message object of type 'TriggerLedEvent-request"
  "519781bfa3d7486c726f766b0ca6f430")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerLedEvent-request>)))
  "Returns full string definition for message of type '<TriggerLedEvent-request>"
  (cl:format cl:nil "# set to true to stop all current running events~%# note that this is only important for asynchronous events~%bool stop_current_event~%~%# this event is triggered when stop_current_event is not true~%int32 event_id~%~%# synchronous events~%int32 STARTUP = 1~%int32 EMERGENCY_STOP = 2~%int32 START_DRIVING = 3~%int32 ERROR = 4~%int32 VISION_STARTUP = 5~%~%# asynchronous events~%int32 DOWNLOAD_MODEL = 10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerLedEvent-request)))
  "Returns full string definition for message of type 'TriggerLedEvent-request"
  (cl:format cl:nil "# set to true to stop all current running events~%# note that this is only important for asynchronous events~%bool stop_current_event~%~%# this event is triggered when stop_current_event is not true~%int32 event_id~%~%# synchronous events~%int32 STARTUP = 1~%int32 EMERGENCY_STOP = 2~%int32 START_DRIVING = 3~%int32 ERROR = 4~%int32 VISION_STARTUP = 5~%~%# asynchronous events~%int32 DOWNLOAD_MODEL = 10~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerLedEvent-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerLedEvent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerLedEvent-request
    (cl:cons ':stop_current_event (stop_current_event msg))
    (cl:cons ':event_id (event_id msg))
))
;//! \htmlinclude TriggerLedEvent-response.msg.html

(cl:defclass <TriggerLedEvent-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TriggerLedEvent-response (<TriggerLedEvent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerLedEvent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerLedEvent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<TriggerLedEvent-response> is deprecated: use sphero_rvr_msgs-srv:TriggerLedEvent-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TriggerLedEvent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:success-val is deprecated.  Use sphero_rvr_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerLedEvent-response>) ostream)
  "Serializes a message object of type '<TriggerLedEvent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerLedEvent-response>) istream)
  "Deserializes a message object of type '<TriggerLedEvent-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerLedEvent-response>)))
  "Returns string type for a service object of type '<TriggerLedEvent-response>"
  "sphero_rvr_msgs/TriggerLedEventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerLedEvent-response)))
  "Returns string type for a service object of type 'TriggerLedEvent-response"
  "sphero_rvr_msgs/TriggerLedEventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerLedEvent-response>)))
  "Returns md5sum for a message object of type '<TriggerLedEvent-response>"
  "519781bfa3d7486c726f766b0ca6f430")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerLedEvent-response)))
  "Returns md5sum for a message object of type 'TriggerLedEvent-response"
  "519781bfa3d7486c726f766b0ca6f430")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerLedEvent-response>)))
  "Returns full string definition for message of type '<TriggerLedEvent-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerLedEvent-response)))
  "Returns full string definition for message of type 'TriggerLedEvent-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerLedEvent-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerLedEvent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerLedEvent-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TriggerLedEvent)))
  'TriggerLedEvent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TriggerLedEvent)))
  'TriggerLedEvent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerLedEvent)))
  "Returns string type for a service object of type '<TriggerLedEvent>"
  "sphero_rvr_msgs/TriggerLedEvent")