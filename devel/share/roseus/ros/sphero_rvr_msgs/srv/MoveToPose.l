;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::MoveToPose)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'MoveToPose (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSE")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSE"))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSEREQUEST")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSEREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::MOVETOPOSERESPONSE")
  (make-package "SPHERO_RVR_MSGS::MOVETOPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass sphero_rvr_msgs::MoveToPoseRequest
  :super ros::object
  :slots (_header _pose _speed _speed_in_si ))

(defmethod sphero_rvr_msgs::MoveToPoseRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:speed __speed) 0.0)
    ((:speed_in_si __speed_in_si) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
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
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
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
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
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
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
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
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _speed_in_si
     (setq _speed_in_si (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sphero_rvr_msgs::MoveToPoseResponse
  :super ros::object
  :slots (_success ))

(defmethod sphero_rvr_msgs::MoveToPoseResponse
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

(defclass sphero_rvr_msgs::MoveToPose
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::MoveToPose :md5sum-) "d1dcc611229611d8e010a848a95942bd")
(setf (get sphero_rvr_msgs::MoveToPose :datatype-) "sphero_rvr_msgs/MoveToPose")
(setf (get sphero_rvr_msgs::MoveToPose :request) sphero_rvr_msgs::MoveToPoseRequest)
(setf (get sphero_rvr_msgs::MoveToPose :response) sphero_rvr_msgs::MoveToPoseResponse)

(defmethod sphero_rvr_msgs::MoveToPoseRequest
  (:response () (instance sphero_rvr_msgs::MoveToPoseResponse :init)))

(setf (get sphero_rvr_msgs::MoveToPoseRequest :md5sum-) "d1dcc611229611d8e010a848a95942bd")
(setf (get sphero_rvr_msgs::MoveToPoseRequest :datatype-) "sphero_rvr_msgs/MoveToPoseRequest")
(setf (get sphero_rvr_msgs::MoveToPoseRequest :definition-)
      "Header header
geometry_msgs/Pose pose
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")

(setf (get sphero_rvr_msgs::MoveToPoseResponse :md5sum-) "d1dcc611229611d8e010a848a95942bd")
(setf (get sphero_rvr_msgs::MoveToPoseResponse :datatype-) "sphero_rvr_msgs/MoveToPoseResponse")
(setf (get sphero_rvr_msgs::MoveToPoseResponse :definition-)
      "Header header
geometry_msgs/Pose pose
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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")



(provide :sphero_rvr_msgs/MoveToPose "d1dcc611229611d8e010a848a95942bd")


