
(cl:in-package :asdf)

(defsystem "minibot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddVisibleObjects" :depends-on ("_package_AddVisibleObjects"))
    (:file "_package_AddVisibleObjects" :depends-on ("_package"))
    (:file "segment_sign_command" :depends-on ("_package_segment_sign_command"))
    (:file "_package_segment_sign_command" :depends-on ("_package"))
    (:file "set_url" :depends-on ("_package_set_url"))
    (:file "_package_set_url" :depends-on ("_package"))
  ))