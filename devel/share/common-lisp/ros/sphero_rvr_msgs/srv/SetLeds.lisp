; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-srv)


;//! \htmlinclude SetLeds-request.msg.html

(cl:defclass <SetLeds-request> (roslisp-msg-protocol:ros-message)
  ((rgb_color
    :reader rgb_color
    :initarg :rgb_color
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetLeds-request (<SetLeds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLeds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLeds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<SetLeds-request> is deprecated: use sphero_rvr_msgs-srv:SetLeds-request instead.")))

(cl:ensure-generic-function 'rgb_color-val :lambda-list '(m))
(cl:defmethod rgb_color-val ((m <SetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-srv:rgb_color-val is deprecated.  Use sphero_rvr_msgs-srv:rgb_color instead.")
  (rgb_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLeds-request>) ostream)
  "Serializes a message object of type '<SetLeds-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rgb_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'rgb_color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLeds-request>) istream)
  "Deserializes a message object of type '<SetLeds-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rgb_color) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rgb_color)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLeds-request>)))
  "Returns string type for a service object of type '<SetLeds-request>"
  "sphero_rvr_msgs/SetLedsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLeds-request)))
  "Returns string type for a service object of type 'SetLeds-request"
  "sphero_rvr_msgs/SetLedsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLeds-request>)))
  "Returns md5sum for a message object of type '<SetLeds-request>"
  "a09c60cc08197f172120c3cd927913a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLeds-request)))
  "Returns md5sum for a message object of type 'SetLeds-request"
  "a09c60cc08197f172120c3cd927913a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLeds-request>)))
  "Returns full string definition for message of type '<SetLeds-request>"
  (cl:format cl:nil "int32[] rgb_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLeds-request)))
  "Returns full string definition for message of type 'SetLeds-request"
  (cl:format cl:nil "int32[] rgb_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLeds-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgb_color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLeds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLeds-request
    (cl:cons ':rgb_color (rgb_color msg))
))
;//! \htmlinclude SetLeds-response.msg.html

(cl:defclass <SetLeds-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetLeds-response (<SetLeds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLeds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLeds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-srv:<SetLeds-response> is deprecated: use sphero_rvr_msgs-srv:SetLeds-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLeds-response>) ostream)
  "Serializes a message object of type '<SetLeds-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLeds-response>) istream)
  "Deserializes a message object of type '<SetLeds-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLeds-response>)))
  "Returns string type for a service object of type '<SetLeds-response>"
  "sphero_rvr_msgs/SetLedsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLeds-response)))
  "Returns string type for a service object of type 'SetLeds-response"
  "sphero_rvr_msgs/SetLedsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLeds-response>)))
  "Returns md5sum for a message object of type '<SetLeds-response>"
  "a09c60cc08197f172120c3cd927913a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLeds-response)))
  "Returns md5sum for a message object of type 'SetLeds-response"
  "a09c60cc08197f172120c3cd927913a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLeds-response>)))
  "Returns full string definition for message of type '<SetLeds-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLeds-response)))
  "Returns full string definition for message of type 'SetLeds-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLeds-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLeds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLeds-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLeds)))
  'SetLeds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLeds)))
  'SetLeds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLeds)))
  "Returns string type for a service object of type '<SetLeds>"
  "sphero_rvr_msgs/SetLeds")