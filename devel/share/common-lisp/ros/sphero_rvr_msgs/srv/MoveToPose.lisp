; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude MoveToPose-request.msg.html

(cl:defclass <MoveToPose-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
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

(cl:defclass MoveToPose-request (<MoveToPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<MoveToPose-request> is deprecated: use sphero_rvr_msgs-srv:MoveToPose-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoveToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:header-val is deprecated.  Use sphero_rvr_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:pose-val is deprecated.  Use sphero_rvr_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MoveToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:speed-val is deprecated.  Use sphero_rvr_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_in_si-val :lambda-list '(m))
(cl:defmethod speed_in_si-val ((m <MoveToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:speed_in_si-val is deprecated.  Use sphero_rvr_msgs-srv:speed_in_si instead.")
  (speed_in_si m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPose-request>) ostream)
  "Serializes a message object of type '<MoveToPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_in_si) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPose-request>) istream)
  "Deserializes a message object of type '<MoveToPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'speed_in_si) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPose-request>)))
  "Returns string type for a service object of type '<MoveToPose-request>"
  "sphero_rvr_msgs/MoveToPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPose-request)))
  "Returns string type for a service object of type 'MoveToPose-request"
  "sphero_rvr_msgs/MoveToPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPose-request>)))
  "Returns md5sum for a message object of type '<MoveToPose-request>"
  "d1dcc611229611d8e010a848a95942bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPose-request)))
  "Returns md5sum for a message object of type 'MoveToPose-request"
  "d1dcc611229611d8e010a848a95942bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPose-request>)))
  "Returns full string definition for message of type '<MoveToPose-request>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%float32 speed~%# True if speed is in m/s, otherwise speed is in [0..128]~%bool speed_in_si~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPose-request)))
  "Returns full string definition for message of type 'MoveToPose-request"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose pose~%float32 speed~%# True if speed is in m/s, otherwise speed is in [0..128]~%bool speed_in_si~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPose-request
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_in_si (speed_in_si msg))
))
;//! \htmlinclude MoveToPose-response.msg.html

(cl:defclass <MoveToPose-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveToPose-response (<MoveToPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<MoveToPose-response> is deprecated: use sphero_rvr_msgs-srv:MoveToPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MoveToPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:success-val is deprecated.  Use sphero_rvr_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToPose-response>) ostream)
  "Serializes a message object of type '<MoveToPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToPose-response>) istream)
  "Deserializes a message object of type '<MoveToPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToPose-response>)))
  "Returns string type for a service object of type '<MoveToPose-response>"
  "sphero_rvr_msgs/MoveToPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPose-response)))
  "Returns string type for a service object of type 'MoveToPose-response"
  "sphero_rvr_msgs/MoveToPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToPose-response>)))
  "Returns md5sum for a message object of type '<MoveToPose-response>"
  "d1dcc611229611d8e010a848a95942bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToPose-response)))
  "Returns md5sum for a message object of type 'MoveToPose-response"
  "d1dcc611229611d8e010a848a95942bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToPose-response>)))
  "Returns full string definition for message of type '<MoveToPose-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToPose-response)))
  "Returns full string definition for message of type 'MoveToPose-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToPose-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToPose)))
  'MoveToPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToPose)))
  'MoveToPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToPose)))
  "Returns string type for a service object of type '<MoveToPose>"
  "sphero_rvr_msgs/MoveToPose")