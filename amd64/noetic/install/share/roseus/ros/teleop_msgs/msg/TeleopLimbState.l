;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopLimbState)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopLimbState (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPLIMBSTATE")
  (make-package "TELEOP_MSGS::TELEOPLIMBSTATE"))

(in-package "ROS")
;;//! \htmlinclude TeleopLimbState.msg.html


(defclass teleop_msgs::TeleopLimbState
  :super ros::object
  :slots (_name _following _ee_closure_enabled _ee_gesture_index ))

(defmethod teleop_msgs::TeleopLimbState
  (:init
   (&key
    ((:name __name) "")
    ((:following __following) nil)
    ((:ee_closure_enabled __ee_closure_enabled) nil)
    ((:ee_gesture_index __ee_gesture_index) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _following __following)
   (setq _ee_closure_enabled __ee_closure_enabled)
   (setq _ee_gesture_index (round __ee_gesture_index))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:following
   (&optional (__following :null))
   (if (not (eq __following :null)) (setq _following __following)) _following)
  (:ee_closure_enabled
   (&optional (__ee_closure_enabled :null))
   (if (not (eq __ee_closure_enabled :null)) (setq _ee_closure_enabled __ee_closure_enabled)) _ee_closure_enabled)
  (:ee_gesture_index
   (&optional __ee_gesture_index)
   (if __ee_gesture_index (setq _ee_gesture_index __ee_gesture_index)) _ee_gesture_index)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _following
    1
    ;; bool _ee_closure_enabled
    1
    ;; uint8 _ee_gesture_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _following
       (if _following (write-byte -1 s) (write-byte 0 s))
     ;; bool _ee_closure_enabled
       (if _ee_closure_enabled (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _ee_gesture_index
       (write-byte _ee_gesture_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _following
     (setq _following (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ee_closure_enabled
     (setq _ee_closure_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _ee_gesture_index
     (setq _ee_gesture_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopLimbState :md5sum-) "aa4590909bb809d1cfda598a4b6604be")
(setf (get teleop_msgs::TeleopLimbState :datatype-) "teleop_msgs/TeleopLimbState")
(setf (get teleop_msgs::TeleopLimbState :definition-)
      "# 会话中单个肢体的决策状态。
# 作为 TeleopSessionState.limbs 的元素使用。

# 肢体名。与 TeleopTarget.name 取值一致。
string name

# 该肢体本周期是否处于跟随
bool following

# 该侧末端是否允许无极开合。
# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。
bool ee_closure_enabled

# 该侧末端当前手势索引。
# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。
uint8 ee_gesture_index

")



(provide :teleop_msgs/TeleopLimbState "aa4590909bb809d1cfda598a4b6604be")


