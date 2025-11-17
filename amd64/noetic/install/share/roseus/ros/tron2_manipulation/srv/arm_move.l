;; Auto-generated. Do not edit!


(when (boundp 'tron2_manipulation::arm_move)
  (if (not (find-package "TRON2_MANIPULATION"))
    (make-package "TRON2_MANIPULATION"))
  (shadow 'arm_move (find-package "TRON2_MANIPULATION")))
(unless (find-package "TRON2_MANIPULATION::ARM_MOVE")
  (make-package "TRON2_MANIPULATION::ARM_MOVE"))
(unless (find-package "TRON2_MANIPULATION::ARM_MOVEREQUEST")
  (make-package "TRON2_MANIPULATION::ARM_MOVEREQUEST"))
(unless (find-package "TRON2_MANIPULATION::ARM_MOVERESPONSE")
  (make-package "TRON2_MANIPULATION::ARM_MOVERESPONSE"))

(in-package "ROS")





(defclass tron2_manipulation::arm_moveRequest
  :super ros::object
  :slots (_left_arm_pos _right_arm_pos _speed ))

(defmethod tron2_manipulation::arm_moveRequest
  (:init
   (&key
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   (setq _speed (float __speed))
   self)
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

(defclass tron2_manipulation::arm_moveResponse
  :super ros::object
  :slots (_status ))

(defmethod tron2_manipulation::arm_moveResponse
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

(defclass tron2_manipulation::arm_move
  :super ros::object
  :slots ())

(setf (get tron2_manipulation::arm_move :md5sum-) "cb0d0168c3a57fd86480cb1b06f339b5")
(setf (get tron2_manipulation::arm_move :datatype-) "tron2_manipulation/arm_move")
(setf (get tron2_manipulation::arm_move :request) tron2_manipulation::arm_moveRequest)
(setf (get tron2_manipulation::arm_move :response) tron2_manipulation::arm_moveResponse)

(defmethod tron2_manipulation::arm_moveRequest
  (:response () (instance tron2_manipulation::arm_moveResponse :init)))

(setf (get tron2_manipulation::arm_moveRequest :md5sum-) "cb0d0168c3a57fd86480cb1b06f339b5")
(setf (get tron2_manipulation::arm_moveRequest :datatype-) "tron2_manipulation/arm_moveRequest")
(setf (get tron2_manipulation::arm_moveRequest :definition-)
      "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
# speed
float32 speed # unit: rad/s or m/s
---
int32 status

")

(setf (get tron2_manipulation::arm_moveResponse :md5sum-) "cb0d0168c3a57fd86480cb1b06f339b5")
(setf (get tron2_manipulation::arm_moveResponse :datatype-) "tron2_manipulation/arm_moveResponse")
(setf (get tron2_manipulation::arm_moveResponse :definition-)
      "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
# speed
float32 speed # unit: rad/s or m/s
---
int32 status

")



(provide :tron2_manipulation/arm_move "cb0d0168c3a57fd86480cb1b06f339b5")


