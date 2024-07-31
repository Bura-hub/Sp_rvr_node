;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::MoveToPosAndYaw)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'MoveToPosAndYaw (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAW")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAW"))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAWREQUEST")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAWREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAWRESPONSE")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSANDYAWRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass sphero_rvr_msgs::MoveToPosAndYawRequest
  :super ros::object
  :slots (_header _position _yaw _speed _speed_in_si ))

(defmethod sphero_rvr_msgs::MoveToPosAndYawRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:speed __speed) 0.0)
    ((:speed_in_si __speed_in_si) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _speed (float __speed))
   (setq _speed_in_si __speed_in_si)
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:speed_in_si
   (&optional (__speed_in_si :null))
   (if (not (eq __speed_in_si :null)) (setq _speed_in_si __speed_in_si)) _speed_in_si)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _yaw
    4
    ;; float32 _speed
    4
    ;; bool _speed_in_si
    1
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
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _speed_in_si
       (if _speed_in_si (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _speed_in_si
     (setq _speed_in_si (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sphero_rvr_msgs::MoveToPosAndYawResponse
  :super ros::object
  :slots (_success ))

(defmethod sphero_rvr_msgs::MoveToPosAndYawResponse
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

(defclass sphero_rvr_msgs::MoveToPosAndYaw
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::MoveToPosAndYaw :md5sum-) "48792c967ca99e7ee947c0af585f6907")
(setf (get sphero_rvr_msgs::MoveToPosAndYaw :datatype-) "sphero_rvr_msgs/MoveToPosAndYaw")
(setf (get sphero_rvr_msgs::MoveToPosAndYaw :request) sphero_rvr_msgs::MoveToPosAndYawRequest)
(setf (get sphero_rvr_msgs::MoveToPosAndYaw :response) sphero_rvr_msgs::MoveToPosAndYawResponse)

(defmethod sphero_rvr_msgs::MoveToPosAndYawRequest
  (:response () (instance sphero_rvr_msgs::MoveToPosAndYawResponse :init)))

(setf (get sphero_rvr_msgs::MoveToPosAndYawRequest :md5sum-) "48792c967ca99e7ee947c0af585f6907")
(setf (get sphero_rvr_msgs::MoveToPosAndYawRequest :datatype-) "sphero_rvr_msgs/MoveToPosAndYawRequest")
(setf (get sphero_rvr_msgs::MoveToPosAndYawRequest :definition-)
      "Header header
geometry_msgs/Point position
# yaw angle in radians
float32 yaw
float32 speed
# True if speed is in m/s, otherwise speed is in [0..128]
bool speed_in_si

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

(setf (get sphero_rvr_msgs::MoveToPosAndYawResponse :md5sum-) "48792c967ca99e7ee947c0af585f6907")
(setf (get sphero_rvr_msgs::MoveToPosAndYawResponse :datatype-) "sphero_rvr_msgs/MoveToPosAndYawResponse")
(setf (get sphero_rvr_msgs::MoveToPosAndYawResponse :definition-)
      "Header header
geometry_msgs/Point position
# yaw angle in radians
float32 yaw
float32 speed
# True if speed is in m/s, otherwise speed is in [0..128]
bool speed_in_si

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



(provide :sphero_rvr_msgs/MoveToPosAndYaw "48792c967ca99e7ee947c0af585f6907")


