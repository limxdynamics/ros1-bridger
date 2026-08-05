;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::motion)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'motion (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::MOTION")
  (make-package "LIMX_ARM_MSGS::MOTION"))
(unless (find-package "LIMX_ARM_MSGS::MOTIONREQUEST")
  (make-package "LIMX_ARM_MSGS::MOTIONREQUEST"))
(unless (find-package "LIMX_ARM_MSGS::MOTIONRESPONSE")
  (make-package "LIMX_ARM_MSGS::MOTIONRESPONSE"))

(in-package "ROS")





(defclass limx_arm_msgs::motionRequest
  :super ros::object
  :slots (_left_arm_pos _right_arm_pos _duration_time ))

(defmethod limx_arm_msgs::motionRequest
  (:init
   (&key
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:duration_time __duration_time) 0.0)
    )
   (send-super :init)
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   (setq _duration_time (float __duration_time))
   self)
  (:left_arm_pos
   (&optional __left_arm_pos)
   (if __left_arm_pos (setq _left_arm_pos __left_arm_pos)) _left_arm_pos)
  (:right_arm_pos
   (&optional __right_arm_pos)
   (if __right_arm_pos (setq _right_arm_pos __right_arm_pos)) _right_arm_pos)
  (:duration_time
   (&optional __duration_time)
   (if __duration_time (setq _duration_time __duration_time)) _duration_time)
  (:serialization-length
   ()
   (+
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
    ;; float32 _duration_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _left_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _left_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _right_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _right_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _duration_time
       (sys::poke _duration_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _left_arm_pos
   (dotimes (i (length _left_arm_pos))
     (setf (elt _left_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _right_arm_pos
   (dotimes (i (length _right_arm_pos))
     (setf (elt _right_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _duration_time
     (setq _duration_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass limx_arm_msgs::motionResponse
  :super ros::object
  :slots (_status ))

(defmethod limx_arm_msgs::motionResponse
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

(defclass limx_arm_msgs::motion
  :super ros::object
  :slots ())

(setf (get limx_arm_msgs::motion :md5sum-) "8f1c1118d46310f55cbaa0a387118cdb")
(setf (get limx_arm_msgs::motion :datatype-) "limx_arm_msgs/motion")
(setf (get limx_arm_msgs::motion :request) limx_arm_msgs::motionRequest)
(setf (get limx_arm_msgs::motion :response) limx_arm_msgs::motionResponse)

(defmethod limx_arm_msgs::motionRequest
  (:response () (instance limx_arm_msgs::motionResponse :init)))

(setf (get limx_arm_msgs::motionRequest :md5sum-) "8f1c1118d46310f55cbaa0a387118cdb")
(setf (get limx_arm_msgs::motionRequest :datatype-) "limx_arm_msgs/motionRequest")
(setf (get limx_arm_msgs::motionRequest :definition-)
      "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]
float32 duration_time
---
int32 status

")

(setf (get limx_arm_msgs::motionResponse :md5sum-) "8f1c1118d46310f55cbaa0a387118cdb")
(setf (get limx_arm_msgs::motionResponse :datatype-) "limx_arm_msgs/motionResponse")
(setf (get limx_arm_msgs::motionResponse :definition-)
      "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]
float32 duration_time
---
int32 status

")



(provide :limx_arm_msgs/motion "8f1c1118d46310f55cbaa0a387118cdb")


