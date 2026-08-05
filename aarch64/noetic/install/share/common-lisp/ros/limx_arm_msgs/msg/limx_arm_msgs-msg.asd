
(cl:in-package :asdf)

(defsystem "limx_arm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointData" :depends-on ("_package_JointData"))
    (:file "_package_JointData" :depends-on ("_package"))
    (:file "JointSet" :depends-on ("_package_JointSet"))
    (:file "_package_JointSet" :depends-on ("_package"))
    (:file "JointStatus" :depends-on ("_package_JointStatus"))
    (:file "_package_JointStatus" :depends-on ("_package"))
    (:file "ServoCmd" :depends-on ("_package_ServoCmd"))
    (:file "_package_ServoCmd" :depends-on ("_package"))
    (:file "arm_status" :depends-on ("_package_arm_status"))
    (:file "_package_arm_status" :depends-on ("_package"))
  ))