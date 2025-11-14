
(cl:in-package :asdf)

(defsystem "controller_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "IMUData" :depends-on ("_package_IMUData"))
    (:file "_package_IMUData" :depends-on ("_package"))
    (:file "JointCmd" :depends-on ("_package_JointCmd"))
    (:file "_package_JointCmd" :depends-on ("_package"))
    (:file "JointState" :depends-on ("_package_JointState"))
    (:file "_package_JointState" :depends-on ("_package"))
  ))