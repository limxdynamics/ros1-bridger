
(cl:in-package :asdf)

(defsystem "upper_body-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arm_move" :depends-on ("_package_arm_move"))
    (:file "_package_arm_move" :depends-on ("_package"))
    (:file "moveJ" :depends-on ("_package_moveJ"))
    (:file "_package_moveJ" :depends-on ("_package"))
  ))