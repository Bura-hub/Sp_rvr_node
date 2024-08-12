; Auto-generated. Do not edit!


(cl:in-package minibot_msgs-srv)


;//! \htmlinclude AddVisibleObjects-request.msg.html

(cl:defclass <AddVisibleObjects-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddVisibleObjects-request (<AddVisibleObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVisibleObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVisibleObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<AddVisibleObjects-request> is deprecated: use minibot_msgs-srv:AddVisibleObjects-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVisibleObjects-request>) ostream)
  "Serializes a message object of type '<AddVisibleObjects-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVisibleObjects-request>) istream)
  "Deserializes a message object of type '<AddVisibleObjects-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVisibleObjects-request>)))
  "Returns string type for a service object of type '<AddVisibleObjects-request>"
  "minibot_msgs/AddVisibleObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVisibleObjects-request)))
  "Returns string type for a service object of type 'AddVisibleObjects-request"
  "minibot_msgs/AddVisibleObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVisibleObjects-request>)))
  "Returns md5sum for a message object of type '<AddVisibleObjects-request>"
  "e528cc6018453c0c96b68b36e0e306c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVisibleObjects-request)))
  "Returns md5sum for a message object of type 'AddVisibleObjects-request"
  "e528cc6018453c0c96b68b36e0e306c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVisibleObjects-request>)))
  "Returns full string definition for message of type '<AddVisibleObjects-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVisibleObjects-request)))
  "Returns full string definition for message of type 'AddVisibleObjects-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVisibleObjects-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVisibleObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVisibleObjects-request
))
;//! \htmlinclude AddVisibleObjects-response.msg.html

(cl:defclass <AddVisibleObjects-response> (roslisp-msg-protocol:ros-message)
  ((object_ids
    :reader object_ids
    :initarg :object_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass AddVisibleObjects-response (<AddVisibleObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVisibleObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVisibleObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minibot_msgs-srv:<AddVisibleObjects-response> is deprecated: use minibot_msgs-srv:AddVisibleObjects-response instead.")))

(cl:ensure-generic-function 'object_ids-val :lambda-list '(m))
(cl:defmethod object_ids-val ((m <AddVisibleObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minibot_msgs-srv:object_ids-val is deprecated.  Use minibot_msgs-srv:object_ids instead.")
  (object_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVisibleObjects-response>) ostream)
  "Serializes a message object of type '<AddVisibleObjects-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_ids))))
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
   (cl:slot-value msg 'object_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVisibleObjects-response>) istream)
  "Deserializes a message object of type '<AddVisibleObjects-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_ids)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVisibleObjects-response>)))
  "Returns string type for a service object of type '<AddVisibleObjects-response>"
  "minibot_msgs/AddVisibleObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVisibleObjects-response)))
  "Returns string type for a service object of type 'AddVisibleObjects-response"
  "minibot_msgs/AddVisibleObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVisibleObjects-response>)))
  "Returns md5sum for a message object of type '<AddVisibleObjects-response>"
  "e528cc6018453c0c96b68b36e0e306c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVisibleObjects-response)))
  "Returns md5sum for a message object of type 'AddVisibleObjects-response"
  "e528cc6018453c0c96b68b36e0e306c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVisibleObjects-response>)))
  "Returns full string definition for message of type '<AddVisibleObjects-response>"
  (cl:format cl:nil "string[] object_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVisibleObjects-response)))
  "Returns full string definition for message of type 'AddVisibleObjects-response"
  (cl:format cl:nil "string[] object_ids~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVisibleObjects-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVisibleObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVisibleObjects-response
    (cl:cons ':object_ids (object_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddVisibleObjects)))
  'AddVisibleObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddVisibleObjects)))
  'AddVisibleObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVisibleObjects)))
  "Returns string type for a service object of type '<AddVisibleObjects>"
  "minibot_msgs/AddVisibleObjects")