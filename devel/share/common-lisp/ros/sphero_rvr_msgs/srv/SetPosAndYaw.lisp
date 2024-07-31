; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude SetPosAndYaw-request.msg.html

(cl:defclass <SetPosAndYaw-request> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass SetPosAndYaw-request (<SetPosAndYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPosAndYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPosAndYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<SetPosAndYaw-request> is deprecated: use sphero_rvr_msgs-srv:SetPosAndYaw-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:header-val is deprecated.  Use sphero_rvr_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SetPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:position-val is deprecated.  Use sphero_rvr_msgs-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <SetPosAndYaw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:yaw-val is deprecated.  Use sphero_rvr_msgs-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPosAndYaw-request>) ostream)
  "Serializes a message object of type '<SetPosAndYaw-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPosAndYaw-request>) istream)
  "Deserializes a message object of type '<SetPosAndYaw-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPosAndYaw-request>)))
  "Returns string type for a service object of type '<SetPosAndYaw-request>"
  "sphero_rvr_msgs/SetPosAndYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPosAndYaw-request)))
  "Returns string type for a service object of type 'SetPosAndYaw-request"
  "sphero_rvr_msgs/SetPosAndYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPosAndYaw-request>)))
  "Returns md5sum for a message object of type '<SetPosAndYaw-request>"
  "eedad11fe6b6da324540f8b36ffddeb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPosAndYaw-request)))
  "Returns md5sum for a message object of type 'SetPosAndYaw-request"
  "eedad11fe6b6da324540f8b36ffddeb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPosAndYaw-request>)))
  "Returns full string definition for message of type '<SetPosAndYaw-request>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%# yaw angle in radians~%float32 yaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPosAndYaw-request)))
  "Returns full string definition for message of type 'SetPosAndYaw-request"
  (cl:format cl:nil "Header header~%geometry_msgs/Point position~%# yaw angle in radians~%float32 yaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPosAndYaw-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPosAndYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPosAndYaw-request
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude SetPosAndYaw-response.msg.html

(cl:defclass <SetPosAndYaw-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPosAndYaw-response (<SetPosAndYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPosAndYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPosAndYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<SetPosAndYaw-response> is deprecated: use sphero_rvr_msgs-srv:SetPosAndYaw-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetPosAndYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:success-val is deprecated.  Use sphero_rvr_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPosAndYaw-response>) ostream)
  "Serializes a message object of type '<SetPosAndYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPosAndYaw-response>) istream)
  "Deserializes a message object of type '<SetPosAndYaw-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPosAndYaw-response>)))
  "Returns string type for a service object of type '<SetPosAndYaw-response>"
  "sphero_rvr_msgs/SetPosAndYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPosAndYaw-response)))
  "Returns string type for a service object of type 'SetPosAndYaw-response"
  "sphero_rvr_msgs/SetPosAndYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPosAndYaw-response>)))
  "Returns md5sum for a message object of type '<SetPosAndYaw-response>"
  "eedad11fe6b6da324540f8b36ffddeb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPosAndYaw-response)))
  "Returns md5sum for a message object of type 'SetPosAndYaw-response"
  "eedad11fe6b6da324540f8b36ffddeb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPosAndYaw-response>)))
  "Returns full string definition for message of type '<SetPosAndYaw-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPosAndYaw-response)))
  "Returns full string definition for message of type 'SetPosAndYaw-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPosAndYaw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPosAndYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPosAndYaw-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPosAndYaw)))
  'SetPosAndYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPosAndYaw)))
  'SetPosAndYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPosAndYaw)))
  "Returns string type for a service object of type '<SetPosAndYaw>"
  "sphero_rvr_msgs/SetPosAndYaw")