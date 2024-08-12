;; Auto-generated. Do not edit!


(when (boundp 'minibot_msgs::set_url)
  (if (not (find-package "MINIBOT_MSGS"))
    (make-package "MINIBOT_MSGS"))
  (shadow 'set_url (find-package "MINIBOT_MSGS")))
(unless (find-package "MINIBOT_MSGS::SET_URL")
  (make-package "MINIBOT_MSGS::SET_URL"))
(unless (find-package "MINIBOT_MSGS::SET_URLREQUEST")
  (make-package "MINIBOT_MSGS::SET_URLREQUEST"))
(unless (find-package "MINIBOT_MSGS::SET_URLRESPONSE")
  (make-package "MINIBOT_MSGS::SET_URLRESPONSE"))

(in-package "ROS")





(defclass minibot_msgs::set_urlRequest
  :super ros::object
  :slots (_url ))

(defmethod minibot_msgs::set_urlRequest
  (:init
   (&key
    ((:url __url) "")
    )
   (send-super :init)
   (setq _url (string __url))
   self)
  (:url
   (&optional __url)
   (if __url (setq _url __url)) _url)
  (:serialization-length
   ()
   (+
    ;; string _url
    4 (length _url)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _url
       (write-long (length _url) s) (princ _url s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _url
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _url (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass minibot_msgs::set_urlResponse
  :super ros::object
  :slots (_success ))

(defmethod minibot_msgs::set_urlResponse
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

(defclass minibot_msgs::set_url
  :super ros::object
  :slots ())

(setf (get minibot_msgs::set_url :md5sum-) "5a074a836c82adf8b27a048ee31b3a82")
(setf (get minibot_msgs::set_url :datatype-) "minibot_msgs/set_url")
(setf (get minibot_msgs::set_url :request) minibot_msgs::set_urlRequest)
(setf (get minibot_msgs::set_url :response) minibot_msgs::set_urlResponse)

(defmethod minibot_msgs::set_urlRequest
  (:response () (instance minibot_msgs::set_urlResponse :init)))

(setf (get minibot_msgs::set_urlRequest :md5sum-) "5a074a836c82adf8b27a048ee31b3a82")
(setf (get minibot_msgs::set_urlRequest :datatype-) "minibot_msgs/set_urlRequest")
(setf (get minibot_msgs::set_urlRequest :definition-)
      "string url
---
bool success
")

(setf (get minibot_msgs::set_urlResponse :md5sum-) "5a074a836c82adf8b27a048ee31b3a82")
(setf (get minibot_msgs::set_urlResponse :datatype-) "minibot_msgs/set_urlResponse")
(setf (get minibot_msgs::set_urlResponse :definition-)
      "string url
---
bool success
")



(provide :minibot_msgs/set_url "5a074a836c82adf8b27a048ee31b3a82")


