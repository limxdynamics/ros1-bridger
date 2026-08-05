;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::desire_pos)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'desire_pos (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::DESIRE_POS")
  (make-package "LIMX_ARM_MSGS::DESIRE_POS"))
(unless (find-package "LIMX_ARM_MSGS::DESIRE_POSREQUEST")
  (make-package "LIMX_ARM_MSGS::DESIRE_POSREQUEST"))
(unless (find-package "LIMX_ARM_MSGS::DESIRE_POSRESPONSE")
  (make-package "LIMX_ARM_MSGS::DESIRE_POSRESPONSE"))

(in-package "ROS")





(defclass limx_arm_msgs::desire_posRequest
  :super ros::object
  :slots (_taskNum _desire_pos _co_control ))

(defmethod limx_arm_msgs::desire_posRequest
  (:init
   (&key
    ((:taskNum __taskNum) 0)
    ((:desire_pos __desire_pos) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:co_control __co_control) nil)
    )
   (send-super :init)
   (setq _taskNum (round __taskNum))
   (setq _desire_pos __desire_pos)
   (setq _co_control __co_control)
   self)
  (:taskNum
   (&optional __taskNum)
   (if __taskNum (setq _taskNum __taskNum)) _taskNum)
  (:desire_pos
   (&optional __desire_pos)
   (if __desire_pos (setq _desire_pos __desire_pos)) _desire_pos)
  (:co_control
   (&optional (__co_control :null))
   (if (not (eq __co_control :null)) (setq _co_control __co_control)) _co_control)
  (:serialization-length
   ()
   (+
    ;; int32 _taskNum
    4
    ;; float32[6] _desire_pos
    (* 4    6)
    ;; bool _co_control
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _taskNum
       (write-long _taskNum s)
     ;; float32[6] _desire_pos
     (dotimes (i 6)
       (sys::poke (elt _desire_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _co_control
       (if _co_control (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _taskNum
     (setq _taskNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[6] _desire_pos
   (dotimes (i (length _desire_pos))
     (setf (elt _desire_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _co_control
     (setq _co_control (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass limx_arm_msgs::desire_posResponse
  :super ros::object
  :slots (_status ))

(defmethod limx_arm_msgs::desire_posResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass limx_arm_msgs::desire_pos
  :super ros::object
  :slots ())

(setf (get limx_arm_msgs::desire_pos :md5sum-) "66df596b0ec651af3f62afa42d52c21b")
(setf (get limx_arm_msgs::desire_pos :datatype-) "limx_arm_msgs/desire_pos")
(setf (get limx_arm_msgs::desire_pos :request) limx_arm_msgs::desire_posRequest)
(setf (get limx_arm_msgs::desire_pos :response) limx_arm_msgs::desire_posResponse)

(defmethod limx_arm_msgs::desire_posRequest
  (:response () (instance limx_arm_msgs::desire_posResponse :init)))

(setf (get limx_arm_msgs::desire_posRequest :md5sum-) "66df596b0ec651af3f62afa42d52c21b")
(setf (get limx_arm_msgs::desire_posRequest :datatype-) "limx_arm_msgs/desire_posRequest")
(setf (get limx_arm_msgs::desire_posRequest :definition-)
      "int32 taskNum
float32[6] desire_pos  # deg/m
bool co_control
---
bool status

")

(setf (get limx_arm_msgs::desire_posResponse :md5sum-) "66df596b0ec651af3f62afa42d52c21b")
(setf (get limx_arm_msgs::desire_posResponse :datatype-) "limx_arm_msgs/desire_posResponse")
(setf (get limx_arm_msgs::desire_posResponse :definition-)
      "int32 taskNum
float32[6] desire_pos  # deg/m
bool co_control
---
bool status

")



(provide :limx_arm_msgs/desire_pos "66df596b0ec651af3f62afa42d52c21b")


