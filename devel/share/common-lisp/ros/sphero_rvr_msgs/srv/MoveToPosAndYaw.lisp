; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude MoveToPosAndYaw-request.msg.html

(cl:defclass <MoveToPosAndYaw-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (speed_in_si
    :reader speed_in_si
    :initarg :speed_in_si
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveToPosAndYaw-request (<MoveToPosAndYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPosAndYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPosAndYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<MoveToPosAndYaw-request> is deprecated: use sphero_rvr_msgs-srv:MoveToPosAndYaw-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveToPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:header-val is deprecated.  Use sphero_rvr_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MoveToPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:position-val is deprecated.  Use sphero_rvr_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <MoveToPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:yaw-val is deprecated.  Use sphero_rvr_msgs-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveToPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:speed-val is deprecated.  Use sphero_rvr_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_in_si-val :lambda-list '(m))
(cl:defmethod speed_in_si-val ((m <MoveToPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:speed_in_si-val is deprecated.  Use sphero_rvr_msgs-srv:speed_in_si instead.")
  (speed_in_si m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPosAndYaw-request>) ostream)
  "Serializes a message object of type '<MoveToPosAndYaw-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_in_si) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPosAndYaw-request>) istream)
  "Deserializes a message object of type '<MoveToPosAndYaw-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'speed_in_si) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPosAndYaw-request>)))
  "Returns string type for a service object of type '<MoveToPosAndYaw-request>"
  "sphero_rvr_msgs/MoveToPosAndYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPosAndYaw-request)))
  "Returns string type for a service object of type 'MoveToPosAndYaw-request"
  "sphero_rvr_msgs/MoveToPosAndYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPosAndYaw-request>)))
  "Returns md5sum for a message object of type '<MoveToPosAndYaw-request>"
  "48792c967ca99e7ee947c0af585f6907")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPosAndYaw-request)))
  "Returns md5sum for a message object of type 'MoveToPosAndYaw-request"
  "48792c967ca99e7ee947c0af585f6907")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPosAndYaw-request>)))
  "Returns full string definition for message of type '<MoveToPosAndYaw-request>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%# yaw angle in radians~%float32 yaw~%float32 speed~%# True if speed is in m/s, otherwise speed is in [0..128]~%bool speed_in_si~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPosAndYaw-request)))
  "Returns full string definition for message of type 'MoveToPosAndYaw-request"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%# yaw angle in radians~%float32 yaw~%float32 speed~%# True if speed is in m/s, otherwise speed is in [0..128]~%bool speed_in_si~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPosAndYaw-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPosAndYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPosAndYaw-request
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_in_si (speed_in_si msg))
))
;//! \htmlinclude MoveToPosAndYaw-response.msg.html

(cl:defclass <MoveToPosAndYaw-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveToPosAndYaw-response (<MoveToPosAndYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPosAndYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPosAndYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<MoveToPosAndYaw-response> is deprecated: use sphero_rvr_msgs-srv:MoveToPosAndYaw-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveToPosAndYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:success-val is deprecated.  Use sphero_rvr_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPosAndYaw-response>) ostream)
  "Serializes a message object of type '<MoveToPosAndYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPosAndYaw-response>) istream)
  "Deserializes a message object of type '<MoveToPosAndYaw-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPosAndYaw-response>)))
  "Returns string type for a service object of type '<MoveToPosAndYaw-response>"
  "sphero_rvr_msgs/MoveToPosAndYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPosAndYaw-response)))
  "Returns string type for a service object of type 'MoveToPosAndYaw-response"
  "sphero_rvr_msgs/MoveToPosAndYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPosAndYaw-response>)))
  "Returns md5sum for a message object of type '<MoveToPosAndYaw-response>"
  "48792c967ca99e7ee947c0af585f6907")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPosAndYaw-response)))
  "Returns md5sum for a message object of type 'MoveToPosAndYaw-response"
  "48792c967ca99e7ee947c0af585f6907")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPosAndYaw-response>)))
  "Returns full string definition for message of type '<MoveToPosAndYaw-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPosAndYaw-response)))
  "Returns full string definition for message of type 'MoveToPosAndYaw-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPosAndYaw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPosAndYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPosAndYaw-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToPosAndYaw)))
  'MoveToPosAndYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToPosAndYaw)))
  'MoveToPosAndYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPosAndYaw)))
  "Returns string type for a service object of type '<MoveToPosAndYaw>"
  "sphero_rvr_msgs/MoveToPosAndYaw")