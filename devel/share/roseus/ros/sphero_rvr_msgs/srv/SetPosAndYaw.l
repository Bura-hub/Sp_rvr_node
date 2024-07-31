;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::SetPosAndYaw)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'SetPosAndYaw (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::SETPOSANDYAW")
  (make-package "SPHERO_RVR_MSGS::SETPOSANDYAW"))
(unless (find-package "SPHERO_RVR_MSGS::SETPOSANDYAWREQUEST")
  (make-package "SPHERO_RVR_MSGS::SETPOSANDYAWREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::SETPOSANDYAWRESPONSE")
  (make-package "SPHERO_RVR_MSGS::SETPOSANDYAWRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass sphero_rvr_msgs::SetPosAndYawRequest
  :super ros::object
  :slots (_header _position _yaw ))

(defmethod sphero_rvr_msgs::SetPosAndYawRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _yaw (float __yaw))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sphero_rvr_msgs::SetPosAndYawResponse
  :super ros::object
  :slots (_success ))

(defmethod sphero_rvr_msgs::SetPosAndYawResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sphero_rvr_msgs::SetPosAndYaw
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::SetPosAndYaw :md5sum-) "eedad11fe6b6da324540f8b36ffddeb5")
(setf (get sphero_rvr_msgs::SetPosAndYaw :datatype-) "sphero_rvr_msgs/SetPosAndYaw")
(setf (get sphero_rvr_msgs::SetPosAndYaw :request) sphero_rvr_msgs::SetPosAndYawRequest)
(setf (get sphero_rvr_msgs::SetPosAndYaw :response) sphero_rvr_msgs::SetPosAndYawResponse)

(defmethod sphero_rvr_msgs::SetPosAndYawRequest
  (:response () (instance sphero_rvr_msgs::SetPosAndYawResponse :init)))

(setf (get sphero_rvr_msgs::SetPosAndYawRequest :md5sum-) "eedad11fe6b6da324540f8b36ffddeb5")
(setf (get sphero_rvr_msgs::SetPosAndYawRequest :datatype-) "sphero_rvr_msgs/SetPosAndYawRequest")
(setf (get sphero_rvr_msgs::SetPosAndYawRequest :definition-)
      "Header header
geometry_msgs/Point position
# yaw angle in radians
float32 yaw

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")

(setf (get sphero_rvr_msgs::SetPosAndYawResponse :md5sum-) "eedad11fe6b6da324540f8b36ffddeb5")
(setf (get sphero_rvr_msgs::SetPosAndYawResponse :datatype-) "sphero_rvr_msgs/SetPosAndYawResponse")
(setf (get sphero_rvr_msgs::SetPosAndYawResponse :definition-)
      "Header header
geometry_msgs/Point position
# yaw angle in radians
float32 yaw

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
")



(provide :sphero_rvr_msgs/SetPosAndYaw "eedad11fe6b6da324540f8b36ffddeb5")


