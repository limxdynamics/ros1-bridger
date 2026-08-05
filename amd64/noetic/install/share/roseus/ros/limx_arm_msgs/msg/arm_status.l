;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::arm_status)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'arm_status (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::ARM_STATUS")
  (make-package "LIMX_ARM_MSGS::ARM_STATUS"))

(in-package "ROS")
;;//! \htmlinclude arm_status.msg.html


(defclass limx_arm_msgs::arm_status
  :super ros::object
  :slots (_left_joints _right_joints _left_endEffector _right_endEffector _ik_statu ))

(defmethod limx_arm_msgs::arm_status
  (:init
   (&key
    ((:left_joints __left_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_joints __right_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:left_endEffector __left_endEffector) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_endEffector __right_endEffector) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:ik_statu __ik_statu) 0)
    )
   (send-super :init)
   (setq _left_joints __left_joints)
   (setq _right_joints __right_joints)
   (setq _left_endEffector __left_endEffector)
   (setq _right_endEffector __right_endEffector)
   (setq _ik_statu (round __ik_statu))
   self)
  (:left_joints
   (&optional __left_joints)
   (if __left_joints (setq _left_joints __left_joints)) _left_joints)
  (:right_joints
   (&optional __right_joints)
   (if __right_joints (setq _right_joints __right_joints)) _right_joints)
  (:left_endEffector
   (&optional __left_endEffector)
   (if __left_endEffector (setq _left_endEffector __left_endEffector)) _left_endEffector)
  (:right_endEffector
   (&optional __right_endEffector)
   (if __right_endEffector (setq _right_endEffector __right_endEffector)) _right_endEffector)
  (:ik_statu
   (&optional __ik_statu)
   (if __ik_statu (setq _ik_statu __ik_statu)) _ik_statu)
  (:serialization-length
   ()
   (+
    ;; float64[] _left_joints
    (* 8    (length _left_joints)) 4
    ;; float64[] _right_joints
    (* 8    (length _right_joints)) 4
    ;; float64[7] _left_endEffector
    (* 8    7)
    ;; float64[7] _right_endEffector
    (* 8    7)
    ;; int32 _ik_statu
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _left_joints
     (write-long (length _left_joints) s)
     (dotimes (i (length _left_joints))
       (sys::poke (elt _left_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _right_joints
     (write-long (length _right_joints) s)
     (dotimes (i (length _right_joints))
       (sys::poke (elt _right_joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _left_endEffector
     (dotimes (i 7)
       (sys::poke (elt _left_endEffector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _right_endEffector
     (dotimes (i 7)
       (sys::poke (elt _right_endEffector i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _ik_statu
       (write-long _ik_statu s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _left_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _left_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _right_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _right_joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[7] _left_endEffector
   (dotimes (i (length _left_endEffector))
     (setf (elt _left_endEffector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _right_endEffector
   (dotimes (i (length _right_endEffector))
     (setf (elt _right_endEffector i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _ik_statu
     (setq _ik_statu (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get limx_arm_msgs::arm_status :md5sum-) "ab1b8cc2dd2d4b67c6f12443dc6788e6")
(setf (get limx_arm_msgs::arm_status :datatype-) "limx_arm_msgs/arm_status")
(setf (get limx_arm_msgs::arm_status :definition-)
      "float64[] left_joints
float64[] right_joints
float64[7] left_endEffector 
float64[7] right_endEffector
int32 ik_statu

")



(provide :limx_arm_msgs/arm_status "ab1b8cc2dd2d4b67c6f12443dc6788e6")


