
(cl:in-package :asdf)

(defsystem "upper_body-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arm_servo" :depends-on ("_package_arm_servo"))
    (:file "_package_arm_servo" :depends-on ("_package"))
    (:file "arm_status" :depends-on ("_package_arm_status"))
    (:file "_package_arm_status" :depends-on ("_package"))
    (:file "servoJ" :depends-on ("_package_servoJ"))
    (:file "_package_servoJ" :depends-on ("_package"))
    (:file "waist_cmd" :depends-on ("_package_waist_cmd"))
    (:file "_package_waist_cmd" :depends-on ("_package"))
  ))