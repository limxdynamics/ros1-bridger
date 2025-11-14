;; Auto-generated. Do not edit!


(when (boundp 'upper_body::arm_servo)
  (if (not (find-package "UPPER_BODY"))
    (make-package "UPPER_BODY"))
  (shadow 'arm_servo (find-package "UPPER_BODY")))
(unless (find-package "UPPER_BODY::ARM_SERVO")
  (make-package "UPPER_BODY::ARM_SERVO"))

(in-package "ROS")
;;//! \htmlinclude arm_servo.msg.html


(defclass upper_body::arm_servo
  :super ros::object
  :slots (_servo_type _left_arm_joints _right_arm_joints _left_arm_pos _right_arm_pos ))

(defmethod upper_body::arm_servo
  (:init
   (&key
    ((:servo_type __servo_type) "")
    ((:left_arm_joints __left_arm_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_arm_joints __right_arm_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _servo_type (string __servo_type))
   (setq _left_arm_joints __left_arm_joints)
   (setq _right_arm_joints __right_arm_joints)
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   self)
  (:servo_type
   (&optional __servo_type)
   (if __servo_type (setq _servo_type __servo_type)) _servo_type)
  (:left_arm_joints
   (&optional __left_arm_joints)
   (if __left_arm_joints (setq _left_arm_joints __left_arm_joints)) _left_arm_joints)
  (:right_arm_joints
   (&optional __right_arm_joints)
   (if __right_arm_joints (setq _right_arm_joints __right_arm_joints)) _right_arm_joints)
  (:left_arm_pos
   (&optional __left_arm_pos)
   (if __left_arm_pos (setq _left_arm_pos __left_arm_pos)) _left_arm_pos)
  (:right_arm_pos
   (&optional __right_arm_pos)
   (if __right_arm_pos (setq _right_arm_pos __right_arm_pos)) _right_arm_pos)
  (:serialization-length
   ()
   (+
    ;; string _servo_type
    4 (length _servo_type)
    ;; float32[] _left_arm_joints
    (* 4    (length _left_arm_joints)) 4
    ;; float32[] _right_arm_joints
    (* 4    (length _right_arm_joints)) 4
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _servo_type
       (write-long (length _servo_type) s) (princ _servo_type s)
     ;; float32[] _left_arm_joints
     (write-long (length _left_arm_joints) s)
     (dotimes (i (length _left_arm_joints))
       (sys::poke (elt _left_arm_joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _right_arm_joints
     (write-long (length _right_arm_joints) s)
     (dotimes (i (length _right_arm_joints))
       (sys::poke (elt _right_arm_joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _left_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _left_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _right_arm_pos
     (dotimes (i 7)
       (sys::poke (elt _right_arm_pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _servo_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _servo_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _left_arm_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_arm_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _left_arm_joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _right_arm_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_arm_joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _right_arm_joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[7] _left_arm_pos
   (dotimes (i (length _left_arm_pos))
     (setf (elt _left_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _right_arm_pos
   (dotimes (i (length _right_arm_pos))
     (setf (elt _right_arm_pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get upper_body::arm_servo :md5sum-) "97e96a0b33437f001f2d5b69b43cfc77")
(setf (get upper_body::arm_servo :datatype-) "upper_body/arm_servo")
(setf (get upper_body::arm_servo :definition-)
      "string servo_type # servoJ or servoP
# servoJ
float32[] left_arm_joints # unit: rad
float32[] right_arm_joints # unit: rad
# servoP
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: mz

")



(provide :upper_body/arm_servo "97e96a0b33437f001f2d5b69b43cfc77")


