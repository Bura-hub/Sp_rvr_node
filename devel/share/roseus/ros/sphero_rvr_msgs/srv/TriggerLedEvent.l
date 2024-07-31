;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::TriggerLedEvent)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'TriggerLedEvent (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENT")
  (make-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENT"))
(unless (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST")
  (make-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTRESPONSE")
  (make-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTRESPONSE"))

(in-package "ROS")





(intern "*STARTUP*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*STARTUP* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*STARTUP* 1)
(intern "*EMERGENCY_STOP*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*EMERGENCY_STOP* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*EMERGENCY_STOP* 2)
(intern "*START_DRIVING*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*START_DRIVING* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*START_DRIVING* 3)
(intern "*ERROR*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*ERROR* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*ERROR* 4)
(intern "*VISION_STARTUP*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*VISION_STARTUP* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*VISION_STARTUP* 5)
(intern "*DOWNLOAD_MODEL*" (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(shadow '*DOWNLOAD_MODEL* (find-package "SPHERO_RVR_MSGS::TRIGGERLEDEVENTREQUEST"))
(defconstant sphero_rvr_msgs::TriggerLedEventRequest::*DOWNLOAD_MODEL* 10)

(defun sphero_rvr_msgs::TriggerLedEventRequest-to-symbol (const)
  (cond
        ((= const 1) 'sphero_rvr_msgs::TriggerLedEventRequest::*STARTUP*)
        ((= const 2) 'sphero_rvr_msgs::TriggerLedEventRequest::*EMERGENCY_STOP*)
        ((= const 3) 'sphero_rvr_msgs::TriggerLedEventRequest::*START_DRIVING*)
        ((= const 4) 'sphero_rvr_msgs::TriggerLedEventRequest::*ERROR*)
        ((= const 5) 'sphero_rvr_msgs::TriggerLedEventRequest::*VISION_STARTUP*)
        ((= const 10) 'sphero_rvr_msgs::TriggerLedEventRequest::*DOWNLOAD_MODEL*)
        (t nil)))

(defclass sphero_rvr_msgs::TriggerLedEventRequest
  :super ros::object
  :slots (_stop_current_event _event_id ))

(defmethod sphero_rvr_msgs::TriggerLedEventRequest
  (:init
   (&key
    ((:stop_current_event __stop_current_event) nil)
    ((:event_id __event_id) 0)
    )
   (send-super :init)
   (setq _stop_current_event __stop_current_event)
   (setq _event_id (round __event_id))
   self)
  (:stop_current_event
   (&optional (__stop_current_event :null))
   (if (not (eq __stop_current_event :null)) (setq _stop_current_event __stop_current_event)) _stop_current_event)
  (:event_id
   (&optional __event_id)
   (if __event_id (setq _event_id __event_id)) _event_id)
  (:serialization-length
   ()
   (+
    ;; bool _stop_current_event
    1
    ;; int32 _event_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop_current_event
       (if _stop_current_event (write-byte -1 s) (write-byte 0 s))
     ;; int32 _event_id
       (write-long _event_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop_current_event
     (setq _stop_current_event (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _event_id
     (setq _event_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass sphero_rvr_msgs::TriggerLedEventResponse
  :super ros::object
  :slots (_success ))

(defmethod sphero_rvr_msgs::TriggerLedEventResponse
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

(defclass sphero_rvr_msgs::TriggerLedEvent
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::TriggerLedEvent :md5sum-) "519781bfa3d7486c726f766b0ca6f430")
(setf (get sphero_rvr_msgs::TriggerLedEvent :datatype-) "sphero_rvr_msgs/TriggerLedEvent")
(setf (get sphero_rvr_msgs::TriggerLedEvent :request) sphero_rvr_msgs::TriggerLedEventRequest)
(setf (get sphero_rvr_msgs::TriggerLedEvent :response) sphero_rvr_msgs::TriggerLedEventResponse)

(defmethod sphero_rvr_msgs::TriggerLedEventRequest
  (:response () (instance sphero_rvr_msgs::TriggerLedEventResponse :init)))

(setf (get sphero_rvr_msgs::TriggerLedEventRequest :md5sum-) "519781bfa3d7486c726f766b0ca6f430")
(setf (get sphero_rvr_msgs::TriggerLedEventRequest :datatype-) "sphero_rvr_msgs/TriggerLedEventRequest")
(setf (get sphero_rvr_msgs::TriggerLedEventRequest :definition-)
      "# set to true to stop all current running events
# note that this is only important for asynchronous events
bool stop_current_event

# this event is triggered when stop_current_event is not true
int32 event_id

# synchronous events
int32 STARTUP = 1
int32 EMERGENCY_STOP = 2
int32 START_DRIVING = 3
int32 ERROR = 4
int32 VISION_STARTUP = 5

# asynchronous events
int32 DOWNLOAD_MODEL = 10

---
bool success

")

(setf (get sphero_rvr_msgs::TriggerLedEventResponse :md5sum-) "519781bfa3d7486c726f766b0ca6f430")
(setf (get sphero_rvr_msgs::TriggerLedEventResponse :datatype-) "sphero_rvr_msgs/TriggerLedEventResponse")
(setf (get sphero_rvr_msgs::TriggerLedEventResponse :definition-)
      "# set to true to stop all current running events
# note that this is only important for asynchronous events
bool stop_current_event

# this event is triggered when stop_current_event is not true
int32 event_id

# synchronous events
int32 STARTUP = 1
int32 EMERGENCY_STOP = 2
int32 START_DRIVING = 3
int32 ERROR = 4
int32 VISION_STARTUP = 5

# asynchronous events
int32 DOWNLOAD_MODEL = 10

---
bool success

")



(provide :sphero_rvr_msgs/TriggerLedEvent "519781bfa3d7486c726f766b0ca6f430")


