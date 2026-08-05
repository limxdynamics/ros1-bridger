;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::gripper)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'gripper (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::GRIPPER")
  (make-package "LIMX_ARM_MSGS::GRIPPER"))
(unless (find-package "LIMX_ARM_MSGS::GRIPPERREQUEST")
  (make-package "LIMX_ARM_MSGS::GRIPPERREQUEST"))
(unless (find-package "LIMX_ARM_MSGS::GRIPPERRESPONSE")
  (make-package "LIMX_ARM_MSGS::GRIPPERRESPONSE"))

(in-package "ROS")





(defclass limx_arm_msgs::gripperRequest
  :super ros::object
  :slots (_initial _dis _force ))

(defmethod limx_arm_msgs::gripperRequest
  (:init
   (&key
    ((:initial __initial) nil)
    ((:dis __dis) 0)
    ((:force __force) 0)
    )
   (send-super :init)
   (setq _initial __initial)
   (setq _dis (round __dis))
   (setq _force (round __force))
   self)
  (:initial
   (&optional (__initial :null))
   (if (not (eq __initial :null)) (setq _initial __initial)) _initial)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; bool _initial
    1
    ;; int32 _dis
    4
    ;; int32 _force
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _initial
       (if _initial (write-byte -1 s) (write-byte 0 s))
     ;; int32 _dis
       (write-long _dis s)
     ;; int32 _force
       (write-long _force s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _initial
     (setq _initial (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _dis
     (setq _dis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _force
     (setq _force (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass limx_arm_msgs::gripperResponse
  :super ros::object
  :slots (_status ))

(defmethod limx_arm_msgs::gripperResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass limx_arm_msgs::gripper
  :super ros::object
  :slots ())

(setf (get limx_arm_msgs::gripper :md5sum-) "0f92630af2d2a713e88b3235d577ea49")
(setf (get limx_arm_msgs::gripper :datatype-) "limx_arm_msgs/gripper")
(setf (get limx_arm_msgs::gripper :request) limx_arm_msgs::gripperRequest)
(setf (get limx_arm_msgs::gripper :response) limx_arm_msgs::gripperResponse)

(defmethod limx_arm_msgs::gripperRequest
  (:response () (instance limx_arm_msgs::gripperResponse :init)))

(setf (get limx_arm_msgs::gripperRequest :md5sum-) "0f92630af2d2a713e88b3235d577ea49")
(setf (get limx_arm_msgs::gripperRequest :datatype-) "limx_arm_msgs/gripperRequest")
(setf (get limx_arm_msgs::gripperRequest :definition-)
      "bool initial
int32 dis
int32 force
---
int32 status

")

(setf (get limx_arm_msgs::gripperResponse :md5sum-) "0f92630af2d2a713e88b3235d577ea49")
(setf (get limx_arm_msgs::gripperResponse :datatype-) "limx_arm_msgs/gripperResponse")
(setf (get limx_arm_msgs::gripperResponse :definition-)
      "bool initial
int32 dis
int32 force
---
int32 status

")



(provide :limx_arm_msgs/gripper "0f92630af2d2a713e88b3235d577ea49")


