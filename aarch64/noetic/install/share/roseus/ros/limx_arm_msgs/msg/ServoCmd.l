;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::ServoCmd)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'ServoCmd (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::SERVOCMD")
  (make-package "LIMX_ARM_MSGS::SERVOCMD"))

(in-package "ROS")
;;//! \htmlinclude ServoCmd.msg.html


(defclass limx_arm_msgs::ServoCmd
  :super ros::object
  :slots (_functionName _left_arm_pos _right_arm_pos ))

(defmethod limx_arm_msgs::ServoCmd
  (:init
   (&key
    ((:functionName __functionName) "")
    ((:left_arm_pos __left_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:right_arm_pos __right_arm_pos) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _functionName (string __functionName))
   (setq _left_arm_pos __left_arm_pos)
   (setq _right_arm_pos __right_arm_pos)
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
  (:serialization-length
   ()
   (+
    ;; string _functionName
    4 (length _functionName)
    ;; float32[7] _left_arm_pos
    (* 4    7)
    ;; float32[7] _right_arm_pos
    (* 4    7)
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
   ;;
   self)
  )

(setf (get limx_arm_msgs::ServoCmd :md5sum-) "9baa32abc430b8109110d02971ccd3a2")
(setf (get limx_arm_msgs::ServoCmd :datatype-) "limx_arm_msgs/ServoCmd")
(setf (get limx_arm_msgs::ServoCmd :definition-)
      "string functionName #servoL SetHeadPos
float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] #servoL
float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] #servoL

")



(provide :limx_arm_msgs/ServoCmd "9baa32abc430b8109110d02971ccd3a2")


