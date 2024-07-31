;; Auto-generated. Do not edit!


(when (boundp 'sphero_rvr_msgs::Color)
  (if (not (find-package "SPHERO_RVR_MSGS"))
    (make-package "SPHERO_RVR_MSGS"))
  (shadow 'Color (find-package "SPHERO_RVR_MSGS")))
(unless (find-package "SPHERO_RVR_MSGS::COLOR")
  (make-package "SPHERO_RVR_MSGS::COLOR"))

(in-package "ROS")
;;//! \htmlinclude Color.msg.html


(defclass sphero_rvr_msgs::Color
  :super ros::object
  :slots (_rgb_color _confidence ))

(defmethod sphero_rvr_msgs::Color
  (:init
   (&key
    ((:rgb_color __rgb_color) (make-array 0 :initial-element 0 :element-type :integer))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _rgb_color __rgb_color)
   (setq _confidence (float __confidence))
   self)
  (:rgb_color
   (&optional __rgb_color)
   (if __rgb_color (setq _rgb_color __rgb_color)) _rgb_color)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; int32[] _rgb_color
    (* 4    (length _rgb_color)) 4
    ;; float32 _confidence
    4
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
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sphero_rvr_msgs::Color :md5sum-) "f95609b7dcba692288894ceebea986be")
(setf (get sphero_rvr_msgs::Color :datatype-) "sphero_rvr_msgs/Color")
(setf (get sphero_rvr_msgs::Color :definition-)
      "int32[] rgb_color
float32 confidence       # the certainty of the measured value. 0 if unknown

")



(provide :sphero_rvr_msgs/Color "f95609b7dcba692288894ceebea986be")


