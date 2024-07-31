; Auto-generated. Do not edit!


(cl:in-package sphero_rvr_msgs-msg)


;//! \htmlinclude Color.msg.html

(cl:defclass <Color> (roslisp-msg-protocol:ros-message)
  ((rgb_color
    :reader rgb_color
    :initarg :rgb_color
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Color (<Color>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Color>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Color)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sphero_rvr_msgs-msg:<Color> is deprecated: use sphero_rvr_msgs-msg:Color instead.")))

(cl:ensure-generic-function 'rgb_color-val :lambda-list '(m))
(cl:defmethod rgb_color-val ((m <Color>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-msg:rgb_color-val is deprecated.  Use sphero_rvr_msgs-msg:rgb_color instead.")
  (rgb_color m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Color>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sphero_rvr_msgs-msg:confidence-val is deprecated.  Use sphero_rvr_msgs-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Color>) ostream)
  "Serializes a message object of type '<Color>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Color>) istream)
  "Deserializes a message object of type '<Color>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Color>)))
  "Returns string type for a message object of type '<Color>"
  "sphero_rvr_msgs/Color")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Color)))
  "Returns string type for a message object of type 'Color"
  "sphero_rvr_msgs/Color")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Color>)))
  "Returns md5sum for a message object of type '<Color>"
  "f95609b7dcba692288894ceebea986be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Color)))
  "Returns md5sum for a message object of type 'Color"
  "f95609b7dcba692288894ceebea986be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Color>)))
  "Returns full string definition for message of type '<Color>"
  (cl:format cl:nil "int32[] rgb_color~%float32 confidence       # the certainty of the measured value. 0 if unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Color)))
  "Returns full string definition for message of type 'Color"
  (cl:format cl:nil "int32[] rgb_color~%float32 confidence       # the certainty of the measured value. 0 if unknown~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Color>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rgb_color) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Color>))
  "Converts a ROS message object to a list"
  (cl:list 'Color
    (cl:cons ':rgb_color (rgb_color msg))
    (cl:cons ':confidence (confidence msg))
))
