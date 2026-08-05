
(cl:in-package :asdf)

(defsystem "teleop_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :controller_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "KeyPoint" :depends-on ("_package_KeyPoint"))
    (:file "_package_KeyPoint" :depends-on ("_package"))
    (:file "TeleopMsg" :depends-on ("_package_TeleopMsg"))
    (:file "_package_TeleopMsg" :depends-on ("_package"))
    (:file "VRState" :depends-on ("_package_VRState"))
    (:file "_package_VRState" :depends-on ("_package"))
  ))