
(cl:in-package :asdf)

(defsystem "hand_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HandCmd" :depends-on ("_package_HandCmd"))
    (:file "_package_HandCmd" :depends-on ("_package"))
    (:file "HandMsg" :depends-on ("_package_HandMsg"))
    (:file "_package_HandMsg" :depends-on ("_package"))
    (:file "HandState" :depends-on ("_package_HandState"))
    (:file "_package_HandState" :depends-on ("_package"))
  ))