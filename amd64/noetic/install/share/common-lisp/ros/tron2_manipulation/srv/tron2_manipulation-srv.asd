
(cl:in-package :asdf)

(defsystem "tron2_manipulation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "arm_move" :depends-on ("_package_arm_move"))
    (:file "_package_arm_move" :depends-on ("_package"))
  ))