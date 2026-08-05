
(cl:in-package :asdf)

(defsystem "limx_arm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DA_motion" :depends-on ("_package_DA_motion"))
    (:file "_package_DA_motion" :depends-on ("_package"))
    (:file "desire_pos" :depends-on ("_package_desire_pos"))
    (:file "_package_desire_pos" :depends-on ("_package"))
    (:file "gripper" :depends-on ("_package_gripper"))
    (:file "_package_gripper" :depends-on ("_package"))
    (:file "motion" :depends-on ("_package_motion"))
    (:file "_package_motion" :depends-on ("_package"))
  ))