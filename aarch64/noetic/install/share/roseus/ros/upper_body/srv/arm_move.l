;; Auto-generated. Do not edit!


(when (boundp 'upper_body::arm_move)
  (if (not (find-package "UPPER_BODY"))
    (make-package "UPPER_BODY"))
  (shadow 'arm_move (find-package "UPPER_BODY")))
(unless (find-package "UPPER_BODY::ARM_MOVE")
  (make-package "UPPER_BODY::ARM_MOVE"))
(unless (find-package "UPPER_BODY::ARM_MOVEREQUEST")
  (make-package "UPPER_BODY::ARM_MOVEREQUEST"))
(unless (find-package "UPPER_BODY::ARM_MOVERESPONSE")
  (make-package "UPPER_BODY::ARM_MOVERESPONSE"))

(in-package "ROS")





(defclass upper_body::arm_moveRequest
  :super ros::object
  :slots (_move_type _left_arm_joints _right_arm_joints _left_arm_pos _right_arm_pos _speed ))

(defmethod upper_body::arm_moveRequest
  (:init
   (&key
    ((:move_type __move_type) "")
    ((:left_arm_joints __left_arm_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:right_arm_joints __right_arm_joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _move_type (string __move_type))
   (setq _left_arm_joints __left_arm_joints)
   (setq _right_arm_joints __right_arm_joints)
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   (setq _speed (float __speed))
   self)
  (:move_type
   (&optional __move_type)
   (if __move_type (setq _move_type __move_type)) _move_type)
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; string _move_type
    4 (length _move_type)
    ;; float32[] _left_arm_joints
    (* 4    (length _left_arm_joints)) 4
    ;; float32[] _right_arm_joints
    (* 4    (length _right_arm_joints)) 4
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _move_type
       (write-long (length _move_type) s) (princ _move_type s)
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
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _move_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _move_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass upper_body::arm_moveResponse
  :super ros::object
  :slots (_status ))

(defmethod upper_body::arm_moveResponse
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

(defclass upper_body::arm_move
  :super ros::object
  :slots ())

(setf (get upper_body::arm_move :md5sum-) "f13b61a0c47c46ffa39677bd176fad6d")
(setf (get upper_body::arm_move :datatype-) "upper_body/arm_move")
(setf (get upper_body::arm_move :request) upper_body::arm_moveRequest)
(setf (get upper_body::arm_move :response) upper_body::arm_moveResponse)

(defmethod upper_body::arm_moveRequest
  (:response () (instance upper_body::arm_moveResponse :init)))

(setf (get upper_body::arm_moveRequest :md5sum-) "f13b61a0c47c46ffa39677bd176fad6d")
(setf (get upper_body::arm_moveRequest :datatype-) "upper_body/arm_moveRequest")
(setf (get upper_body::arm_moveRequest :definition-)
      "# motion type
string move_type # moveJ\\ moveL\\ moveP\\ moveWaistArm
# moveJ
float32[] left_arm_joints # unit: rad
float32[] right_arm_joints # unit: rad
# moveL\\ moveP
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
# speed
float32 speed # unit: rad/s or m/s
---
int32 status

")

(setf (get upper_body::arm_moveResponse :md5sum-) "f13b61a0c47c46ffa39677bd176fad6d")
(setf (get upper_body::arm_moveResponse :datatype-) "upper_body/arm_moveResponse")
(setf (get upper_body::arm_moveResponse :definition-)
      "# motion type
string move_type # moveJ\\ moveL\\ moveP\\ moveWaistArm
# moveJ
float32[] left_arm_joints # unit: rad
float32[] right_arm_joints # unit: rad
# moveL\\ moveP
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
# speed
float32 speed # unit: rad/s or m/s
---
int32 status

")



(provide :upper_body/arm_move "f13b61a0c47c46ffa39677bd176fad6d")


