
(cl:in-package :asdf)

(defsystem "sphero_rvr_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Color" :depends-on ("_package_Color"))
    (:file "_package_Color" :depends-on ("_package"))
  ))