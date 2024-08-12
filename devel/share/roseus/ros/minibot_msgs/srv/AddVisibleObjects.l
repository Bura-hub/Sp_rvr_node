;; Auto-generated. Do not edit!


(when (boundp 'minibot_msgs::AddVisibleObjects)
  (if (not (find-package "MINIBOT_MSGS"))
    (make-package "MINIBOT_MSGS"))
  (shadow 'AddVisibleObjects (find-package "MINIBOT_MSGS")))
(unless (find-package "MINIBOT_MSGS::ADDVISIBLEOBJECTS")
  (make-package "MINIBOT_MSGS::ADDVISIBLEOBJECTS"))
(unless (find-package "MINIBOT_MSGS::ADDVISIBLEOBJECTSREQUEST")
  (make-package "MINIBOT_MSGS::ADDVISIBLEOBJECTSREQUEST"))
(unless (find-package "MINIBOT_MSGS::ADDVISIBLEOBJECTSRESPONSE")
  (make-package "MINIBOT_MSGS::ADDVISIBLEOBJECTSRESPONSE"))

(in-package "ROS")





(defclass minibot_msgs::AddVisibleObjectsRequest
  :super ros::object
  :slots ())

(defmethod minibot_msgs::AddVisibleObjectsRequest
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

(defclass minibot_msgs::AddVisibleObjectsResponse
  :super ros::object
  :slots (_object_ids ))

(defmethod minibot_msgs::AddVisibleObjectsResponse
  (:init
   (&key
    ((:object_ids __object_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _object_ids __object_ids)
   self)
  (:object_ids
   (&optional __object_ids)
   (if __object_ids (setq _object_ids __object_ids)) _object_ids)
  (:serialization-length
   ()
   (+
    ;; string[] _object_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _object_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _object_ids
     (write-long (length _object_ids) s)
     (dolist (elem _object_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _object_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _object_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass minibot_msgs::AddVisibleObjects
  :super ros::object
  :slots ())

(setf (get minibot_msgs::AddVisibleObjects :md5sum-) "e528cc6018453c0c96b68b36e0e306c9")
(setf (get minibot_msgs::AddVisibleObjects :datatype-) "minibot_msgs/AddVisibleObjects")
(setf (get minibot_msgs::AddVisibleObjects :request) minibot_msgs::AddVisibleObjectsRequest)
(setf (get minibot_msgs::AddVisibleObjects :response) minibot_msgs::AddVisibleObjectsResponse)

(defmethod minibot_msgs::AddVisibleObjectsRequest
  (:response () (instance minibot_msgs::AddVisibleObjectsResponse :init)))

(setf (get minibot_msgs::AddVisibleObjectsRequest :md5sum-) "e528cc6018453c0c96b68b36e0e306c9")
(setf (get minibot_msgs::AddVisibleObjectsRequest :datatype-) "minibot_msgs/AddVisibleObjectsRequest")
(setf (get minibot_msgs::AddVisibleObjectsRequest :definition-)
      "---
string[] object_ids

")

(setf (get minibot_msgs::AddVisibleObjectsResponse :md5sum-) "e528cc6018453c0c96b68b36e0e306c9")
(setf (get minibot_msgs::AddVisibleObjectsResponse :datatype-) "minibot_msgs/AddVisibleObjectsResponse")
(setf (get minibot_msgs::AddVisibleObjectsResponse :definition-)
      "---
string[] object_ids

")



(provide :minibot_msgs/AddVisibleObjects "e528cc6018453c0c96b68b36e0e306c9")


