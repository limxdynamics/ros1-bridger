;; Auto-generated. Do not edit!


(when (boundp 'hand_msgs::TactileCmd)
  (if (not (find-package "HAND_MSGS"))
    (make-package "HAND_MSGS"))
  (shadow 'TactileCmd (find-package "HAND_MSGS")))
(unless (find-package "HAND_MSGS::TACTILECMD")
  (make-package "HAND_MSGS::TACTILECMD"))

(in-package "ROS")
;;//! \htmlinclude TactileCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hand_msgs::TactileCmd
  :super ros::object
  :slots (_header _names _tactile_switch _channel_reset _calibration_trigger ))

(defmethod hand_msgs::TactileCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tactile_switch __tactile_switch) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:channel_reset __channel_reset) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:calibration_trigger __calibration_trigger) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _tactile_switch __tactile_switch)
   (setq _channel_reset __channel_reset)
   (setq _calibration_trigger __calibration_trigger)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:tactile_switch
   (&optional __tactile_switch)
   (if __tactile_switch (setq _tactile_switch __tactile_switch)) _tactile_switch)
  (:channel_reset
   (&optional __channel_reset)
   (if __channel_reset (setq _channel_reset __channel_reset)) _channel_reset)
  (:calibration_trigger
   (&optional __calibration_trigger)
   (if __calibration_trigger (setq _calibration_trigger __calibration_trigger)) _calibration_trigger)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; bool[] _tactile_switch
    (* 1    (length _tactile_switch)) 4
    ;; bool[] _channel_reset
    (* 1    (length _channel_reset)) 4
    ;; bool[] _calibration_trigger
    (* 1    (length _calibration_trigger)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _tactile_switch
     (write-long (length _tactile_switch) s)
     (dotimes (i (length _tactile_switch))
       (if (elt _tactile_switch i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _channel_reset
     (write-long (length _channel_reset) s)
     (dotimes (i (length _channel_reset))
       (if (elt _channel_reset i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _calibration_trigger
     (write-long (length _calibration_trigger) s)
     (dotimes (i (length _calibration_trigger))
       (if (elt _calibration_trigger i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _tactile_switch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tactile_switch (make-list n))
     (dotimes (i n)
     (setf (elt _tactile_switch i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _channel_reset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel_reset (make-list n))
     (dotimes (i n)
     (setf (elt _channel_reset i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _calibration_trigger
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calibration_trigger (make-list n))
     (dotimes (i n)
     (setf (elt _calibration_trigger i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get hand_msgs::TactileCmd :md5sum-) "8b0263238e251bcb7003327943797186")
(setf (get hand_msgs::TactileCmd :datatype-) "hand_msgs/TactileCmd")
(setf (get hand_msgs::TactileCmd :definition-)
      "std_msgs/Header header

string[]  names
bool[] tactile_switch             # 触觉开关 (true=开启 false=关闭)
bool[] channel_reset              # 通道复位 (true触发, 执行时手指不可受力)
bool[] calibration_trigger        # 参数校准 (true触发, 执行约10s内数据不可用, 手指不可受力)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :hand_msgs/TactileCmd "8b0263238e251bcb7003327943797186")


