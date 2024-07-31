;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::SetLeds)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'SetLeds (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::SETLEDS")
  (make-package "SPHERO_RVR_MSGS::SETLEDS"))
(unless (find-package "SPHERO_RVR_MSGS::SETLEDSREQUEST")
  (make-package "SPHERO_RVR_MSGS::SETLEDSREQUEST"))
(unless (find-package "SPHERO_RVR_MSGS::SETLEDSRESPONSE")
  (make-package "SPHERO_RVR_MSGS::SETLEDSRESPONSE"))

(in-package "ROS")





(defclass sphero_rvr_msgs::SetLedsRequest
  :super ros::object
  :slots (_rgb_color ))

(defmethod sphero_rvr_msgs::SetLedsRequest
  (:init
   (&key
    ((:rgb_color __rgb_color) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _rgb_color __rgb_color)
   self)
  (:rgb_color
   (&optional __rgb_color)
   (if __rgb_color (setq _rgb_color __rgb_color)) _rgb_color)
  (:serialization-length
   ()
   (+
    ;; int32[] _rgb_color
    (* 4    (length _rgb_color)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _rgb_color
     (write-long (length _rgb_color) s)
     (dotimes (i (length _rgb_color))
       (write-long (elt _rgb_color i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _rgb_color
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rgb_color (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rgb_color i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass sphero_rvr_msgs::SetLedsResponse
  :super ros::object
  :slots ())

(defmethod sphero_rvr_msgs::SetLedsResponse
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

(defclass sphero_rvr_msgs::SetLeds
  :super ros::object
  :slots ())

(setf (get sphero_rvr_msgs::SetLeds :md5sum-) "a09c60cc08197f172120c3cd927913a3")
(setf (get sphero_rvr_msgs::SetLeds :datatype-) "sphero_rvr_msgs/SetLeds")
(setf (get sphero_rvr_msgs::SetLeds :request) sphero_rvr_msgs::SetLedsRequest)
(setf (get sphero_rvr_msgs::SetLeds :response) sphero_rvr_msgs::SetLedsResponse)

(defmethod sphero_rvr_msgs::SetLedsRequest
  (:response () (instance sphero_rvr_msgs::SetLedsResponse :init)))

(setf (get sphero_rvr_msgs::SetLedsRequest :md5sum-) "a09c60cc08197f172120c3cd927913a3")
(setf (get sphero_rvr_msgs::SetLedsRequest :datatype-) "sphero_rvr_msgs/SetLedsRequest")
(setf (get sphero_rvr_msgs::SetLedsRequest :definition-)
      "int32[] rgb_color
---
")

(setf (get sphero_rvr_msgs::SetLedsResponse :md5sum-) "a09c60cc08197f172120c3cd927913a3")
(setf (get sphero_rvr_msgs::SetLedsResponse :datatype-) "sphero_rvr_msgs/SetLedsResponse")
(setf (get sphero_rvr_msgs::SetLedsResponse :definition-)
      "int32[] rgb_color
---
")



(provide :sphero_rvr_msgs/SetLeds "a09c60cc08197f172120c3cd927913a3")


