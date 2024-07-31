;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::BatteryState)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'BatteryState (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::BATTERYSTATE")
  (make-package "SPHERO_RVR_MSGS::BATTERYSTATE"))
(unless (find-package "SPHERO_RVR_MSGS::BATTERYSTATEREQUEST")
  (make-package "SPHERO_RVR_MSGS::BATTERYSTATEREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::BATTERYSTATERESPONSE")
  (make-package "SPHERO_RVR_MSGS::BATTERYSTATERESPONSE"))

(in-package "ROS")





(defclass sphero_rvr_msgs::BatteryStateRequest
  :super ros::object
  :slots ())

(defmethod sphero_rvr_msgs::BatteryStateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass sphero_rvr_msgs::BatteryStateResponse
  :super ros::object
  :slots (_battery_percentage _voltage_state ))

(defmethod sphero_rvr_msgs::BatteryStateResponse
  (:init
   (&key
    ((:battery_percentage __battery_percentage) 0)
    ((:voltage_state __voltage_state) "")
    )
   (send-super :init)
   (setq _battery_percentage (round __battery_percentage))
   (setq _voltage_state (string __voltage_state))
   self)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:voltage_state
   (&optional __voltage_state)
   (if __voltage_state (setq _voltage_state __voltage_state)) _voltage_state)
  (:serialization-length
   ()
   (+
    ;; int8 _battery_percentage
    1
    ;; string _voltage_state
    4 (length _voltage_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _battery_percentage
       (write-byte _battery_percentage s)
     ;; string _voltage_state
       (write-long (length _voltage_state) s) (princ _voltage_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _battery_percentage
     (setq _battery_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _battery_percentage 127) (setq _battery_percentage (- _battery_percentage 256)))
   ;; string _voltage_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _voltage_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sphero_rvr_msgs::BatteryState
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::BatteryState :md5sum-) "befe44135dbb4e3ba48bf2536ab69b80")
(setf (get sphero_rvr_msgs::BatteryState :datatype-) "sphero_rvr_msgs/BatteryState")
(setf (get sphero_rvr_msgs::BatteryState :request) sphero_rvr_msgs::BatteryStateRequest)
(setf (get sphero_rvr_msgs::BatteryState :response) sphero_rvr_msgs::BatteryStateResponse)

(defmethod sphero_rvr_msgs::BatteryStateRequest
  (:response () (instance sphero_rvr_msgs::BatteryStateResponse :init)))

(setf (get sphero_rvr_msgs::BatteryStateRequest :md5sum-) "befe44135dbb4e3ba48bf2536ab69b80")
(setf (get sphero_rvr_msgs::BatteryStateRequest :datatype-) "sphero_rvr_msgs/BatteryStateRequest")
(setf (get sphero_rvr_msgs::BatteryStateRequest :definition-)
      "---
int8 battery_percentage
# available states are [unknown, ok, low, critical]
string voltage_state
")

(setf (get sphero_rvr_msgs::BatteryStateResponse :md5sum-) "befe44135dbb4e3ba48bf2536ab69b80")
(setf (get sphero_rvr_msgs::BatteryStateResponse :datatype-) "sphero_rvr_msgs/BatteryStateResponse")
(setf (get sphero_rvr_msgs::BatteryStateResponse :definition-)
      "---
int8 battery_percentage
# available states are [unknown, ok, low, critical]
string voltage_state
")



(provide :sphero_rvr_msgs/BatteryState "befe44135dbb4e3ba48bf2536ab69b80")


