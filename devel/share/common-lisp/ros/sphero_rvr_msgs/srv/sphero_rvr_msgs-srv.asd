
(cl:in-package :asdf)

(defsystem "sphero_rvr_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BatteryState" :depends-on ("_package_BatteryState"))
    (:file "_package_BatteryState" :depends-on ("_package"))
    (:file "MoveToPosAndYaw" :depends-on ("_package_MoveToPosAndYaw"))
    (:file "_package_MoveToPosAndYaw" :depends-on ("_package"))
    (:file "MoveToPose" :depends-on ("_package_MoveToPose"))
    (:file "_package_MoveToPose" :depends-on ("_package"))
    (:file "SetLeds" :depends-on ("_package_SetLeds"))
    (:file "_package_SetLeds" :depends-on ("_package"))
    (:file "SetPosAndYaw" :depends-on ("_package_SetPosAndYaw"))
    (:file "_package_SetPosAndYaw" :depends-on ("_package"))
    (:file "TriggerLedEvent" :depends-on ("_package_TriggerLedEvent"))
    (:file "_package_TriggerLedEvent" :depends-on ("_package"))
  ))