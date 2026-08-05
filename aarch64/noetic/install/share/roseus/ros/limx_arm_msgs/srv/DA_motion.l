;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::DA_motion)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'DA_motion (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::DA_MOTION")
  (make-package "LIMX_ARM_MSGS::DA_MOTION"))
(unless (find-package "LIMX_ARM_MSGS::DA_MOTIONREQUEST")
  (make-package "LIMX_ARM_MSGS::DA_MOTIONREQUEST"))
(unless (find-package "LIMX_ARM_MSGS::DA_MOTIONRESPONSE")
  (make-package "LIMX_ARM_MSGS::DA_MOTIONRESPONSE"))

(in-package "ROS")





(defclass limx_arm_msgs::DA_motionRequest
  :super ros::object
  :slots (_functionName _left_arm_pos _right_arm_pos _speed _left_arm_joints _right_arm_joints _headPos ))

(defmethod limx_arm_msgs::DA_motionRequest
  (:init
   (&key
    ((:functionName __functionName) "")
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    ((:left_arm_joints __left_arm_joints) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_joints __right_arm_joints) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:headPos __headPos) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _functionName (string __functionName))
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   (setq _speed (float __speed))
   (setq _left_arm_joints __left_arm_joints)
   (setq _right_arm_joints __right_arm_joints)
   (setq _headPos __headPos)
   self)
  (:functionName
   (&optional __functionName)
   (if __functionName (setq _functionName __functionName)) _functionName)
  (:left_arm_pos
   (&optional __left_arm_pos)
   (if __left_arm_pos (setq _left_arm_pos __left_arm_pos)) _left_arm_pos)
  (:right_arm_pos
   (&optional __right_arm_pos)
   (if __right_arm_pos (setq _right_arm_pos __right_arm_pos)) _right_arm_pos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:left_arm_joints
   (&optional __left_arm_joints)
   (if __left_arm_joints (setq _left_arm_joints __left_arm_joints)) _left_arm_joints)
  (:right_arm_joints
   (&optional __right_arm_joints)
   (if __right_arm_joints (setq _right_arm_joints __right_arm_joints)) _right_arm_joints)
  (:headPos
   (&optional __headPos)
   (if __headPos (setq _headPos __headPos)) _headPos)
  (:serialization-length
   ()
   (+
    ;; string _functionName
    4 (length _functionName)
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
    ;; float32 _speed
    4
    ;; float32[7] _left_arm_joints
    (* 4    7)
    ;; float32[7] _right_arm_joints
    (* 4    7)
    ;; float32[2] _headPos
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _functionName
       (write-long (length _functionName) s) (princ _functionName s)
     ;; float32[7] _left_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _left_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _right_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _right_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[7] _left_arm_joints
     (dotimes (i 7)
       (sys::poke (elt _left_arm_joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _right_arm_joints
     (dotimes (i 7)
       (sys::poke (elt _right_arm_joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _headPos
     (dotimes (i 2)
       (sys::poke (elt _headPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _functionName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _functionName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[7] _left_arm_pos
   (dotimes (i (length _left_arm_pos))
     (setf (elt _left_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _right_arm_pos
   (dotimes (i (length _right_arm_pos))
     (setf (elt _right_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[7] _left_arm_joints
   (dotimes (i (length _left_arm_joints))
     (setf (elt _left_arm_joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _right_arm_joints
   (dotimes (i (length _right_arm_joints))
     (setf (elt _right_arm_joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _headPos
   (dotimes (i (length _headPos))
     (setf (elt _headPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass limx_arm_msgs::DA_motionResponse
  :super ros::object
  :slots (_status ))

(defmethod limx_arm_msgs::DA_motionResponse
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

(defclass limx_arm_msgs::DA_motion
  :super ros::object
  :slots ())

(setf (get limx_arm_msgs::DA_motion :md5sum-) "6513938defdd69ca721d029105170004")
(setf (get limx_arm_msgs::DA_motion :datatype-) "limx_arm_msgs/DA_motion")
(setf (get limx_arm_msgs::DA_motion :request) limx_arm_msgs::DA_motionRequest)
(setf (get limx_arm_msgs::DA_motion :response) limx_arm_msgs::DA_motionResponse)

(defmethod limx_arm_msgs::DA_motionRequest
  (:response () (instance limx_arm_msgs::DA_motionResponse :init)))

(setf (get limx_arm_msgs::DA_motionRequest :md5sum-) "6513938defdd69ca721d029105170004")
(setf (get limx_arm_msgs::DA_motionRequest :datatype-) "limx_arm_msgs/DA_motionRequest")
(setf (get limx_arm_msgs::DA_motionRequest :definition-)
      "string functionName
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]
float32 speed 
float32[7] left_arm_joints
float32[7] right_arm_joints  
float32[2] headPos
---
int32 status

")

(setf (get limx_arm_msgs::DA_motionResponse :md5sum-) "6513938defdd69ca721d029105170004")
(setf (get limx_arm_msgs::DA_motionResponse :datatype-) "limx_arm_msgs/DA_motionResponse")
(setf (get limx_arm_msgs::DA_motionResponse :definition-)
      "string functionName
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]
float32 speed 
float32[7] left_arm_joints
float32[7] right_arm_joints  
float32[2] headPos
---
int32 status

")



(provide :limx_arm_msgs/DA_motion "6513938defdd69ca721d029105170004")


