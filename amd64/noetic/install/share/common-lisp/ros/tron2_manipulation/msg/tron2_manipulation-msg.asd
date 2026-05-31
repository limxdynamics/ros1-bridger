
(cl:in-package :asdf)

(defsystem "tron2_manipulation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arm_pose" :depends-on ("_package_arm_pose"))
    (:file "_package_arm_pose" :depends-on ("_package"))
    (:file "arm_status" :depends-on ("_package_arm_status"))
    (:file "_package_arm_status" :depends-on ("_package"))
  ))