;; Auto-generated. Do not edit!


(when (boundp 'minibot_msgs::segment_sign_command)
  (if (not (find-package "MINIBOT_MSGS"))
    (make-package "MINIBOT_MSGS"))
  (shadow 'segment_sign_command (find-package "MINIBOT_MSGS")))
(unless (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMAND")
  (make-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMAND"))
(unless (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST")
  (make-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(unless (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDRESPONSE")
  (make-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDRESPONSE"))

(in-package "ROS")





(intern "*PERSISTENT_SAVE*" (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(shadow '*PERSISTENT_SAVE* (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(defconstant minibot_msgs::segment_sign_commandRequest::*PERSISTENT_SAVE* 0)
(intern "*TOGGLE_PATCH_VISUALIZATION*" (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(shadow '*TOGGLE_PATCH_VISUALIZATION* (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(defconstant minibot_msgs::segment_sign_commandRequest::*TOGGLE_PATCH_VISUALIZATION* 1)
(intern "*LOAD_DEFAULT*" (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(shadow '*LOAD_DEFAULT* (find-package "MINIBOT_MSGS::SEGMENT_SIGN_COMMANDREQUEST"))
(defconstant minibot_msgs::segment_sign_commandRequest::*LOAD_DEFAULT* 2)

(defun minibot_msgs::segment_sign_commandRequest-to-symbol (const)
  (cond
        ((= const 0) 'minibot_msgs::segment_sign_commandRequest::*PERSISTENT_SAVE*)
        ((= const 1) 'minibot_msgs::segment_sign_commandRequest::*TOGGLE_PATCH_VISUALIZATION*)
        ((= const 2) 'minibot_msgs::segment_sign_commandRequest::*LOAD_DEFAULT*)
        (t nil)))

(defclass minibot_msgs::segment_sign_commandRequest
  :super ros::object
  :slots (_command ))

(defmethod minibot_msgs::segment_sign_commandRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;;
   self)
  )

(defclass minibot_msgs::segment_sign_commandResponse
  :super ros::object
  :slots ())

(defmethod minibot_msgs::segment_sign_commandResponse
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

(defclass minibot_msgs::segment_sign_command
  :super ros::object
  :slots ())

(setf (get minibot_msgs::segment_sign_command :md5sum-) "67dfdadbbb6dd9ac14fa405e04acf5b7")
(setf (get minibot_msgs::segment_sign_command :datatype-) "minibot_msgs/segment_sign_command")
(setf (get minibot_msgs::segment_sign_command :request) minibot_msgs::segment_sign_commandRequest)
(setf (get minibot_msgs::segment_sign_command :response) minibot_msgs::segment_sign_commandResponse)

(defmethod minibot_msgs::segment_sign_commandRequest
  (:response () (instance minibot_msgs::segment_sign_commandResponse :init)))

(setf (get minibot_msgs::segment_sign_commandRequest :md5sum-) "67dfdadbbb6dd9ac14fa405e04acf5b7")
(setf (get minibot_msgs::segment_sign_commandRequest :datatype-) "minibot_msgs/segment_sign_commandRequest")
(setf (get minibot_msgs::segment_sign_commandRequest :definition-)
      "int8 PERSISTENT_SAVE=0
int8 TOGGLE_PATCH_VISUALIZATION=1
int8 LOAD_DEFAULT=2

int8 command
---

")

(setf (get minibot_msgs::segment_sign_commandResponse :md5sum-) "67dfdadbbb6dd9ac14fa405e04acf5b7")
(setf (get minibot_msgs::segment_sign_commandResponse :datatype-) "minibot_msgs/segment_sign_commandResponse")
(setf (get minibot_msgs::segment_sign_commandResponse :definition-)
      "int8 PERSISTENT_SAVE=0
int8 TOGGLE_PATCH_VISUALIZATION=1
int8 LOAD_DEFAULT=2

int8 command
---

")



(provide :minibot_msgs/segment_sign_command "67dfdadbbb6dd9ac14fa405e04acf5b7")


