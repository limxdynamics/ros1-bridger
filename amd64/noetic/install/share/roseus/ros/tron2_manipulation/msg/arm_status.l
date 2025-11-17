;; Auto-generated. Do not edit!


(when (boundp 'tron2_manipulation::arm_status)
  (if (not (find-package "TRON2_MANIPULATION"))
    (make-package "TRON2_MANIPULATION"))
  (shadow 'arm_status (find-package "TRON2_MANIPULATION")))
(unless (find-package "TRON2_MANIPULATION::ARM_STATUS")
  (make-package "TRON2_MANIPULATION::ARM_STATUS"))

(in-package "ROS")
;;//! \htmlinclude arm_status.msg.html


(defclass tron2_manipulation::arm_status
  :super ros::object
  :slots (_left_arm_pos _right_arm_pos ))

(defmethod tron2_manipulation::arm_status
  (:init
   (&key
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
   self)
  (:left_arm_pos
   (&optional __left_arm_pos)
   (if __left_arm_pos (setq _left_arm_pos __left_arm_pos)) _left_arm_pos)
  (:right_arm_pos
   (&optional __right_arm_pos)
   (if __right_arm_pos (setq _right_arm_pos __right_arm_pos)) _right_arm_pos)
  (:serialization-length
   ()
   (+
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
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
   ;;
   self)
  )

(setf (get tron2_manipulation::arm_status :md5sum-) "8e03a077af41c0b3cbb4b9fb7c5de204")
(setf (get tron2_manipulation::arm_status :datatype-) "tron2_manipulation/arm_status")
(setf (get tron2_manipulation::arm_status :definition-)
      "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m

")



(provide :tron2_manipulation/arm_status "8e03a077af41c0b3cbb4b9fb7c5de204")


