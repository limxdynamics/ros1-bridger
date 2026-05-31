;; Auto-generated. Do not edit!


(when (boundp 'hand_msgs::HandCmd)
  (if (not (find-package "HAND_MSGS"))
    (make-package "HAND_MSGS"))
  (shadow 'HandCmd (find-package "HAND_MSGS")))
(unless (find-package "HAND_MSGS::HANDCMD")
  (make-package "HAND_MSGS::HANDCMD"))

(in-package "ROS")
;;//! \htmlinclude HandCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hand_msgs::HandCmd
  :super ros::object
  :slots (_header _hand_type _ctrl_mode _hand_cmd ))

(defmethod hand_msgs::HandCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hand_type __hand_type) "")
    ((:ctrl_mode __ctrl_mode) (make-array 2 :initial-element 0 :element-type :char))
    ((:hand_cmd __hand_cmd) (let (r) (dotimes (i 2) (push (instance hand_msgs::HandMsg :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hand_type (string __hand_type))
   (setq _ctrl_mode __ctrl_mode)
   (setq _hand_cmd __hand_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hand_type
   (&optional __hand_type)
   (if __hand_type (setq _hand_type __hand_type)) _hand_type)
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:hand_cmd
   (&rest __hand_cmd)
   (if (keywordp (car __hand_cmd))
       (send* _hand_cmd __hand_cmd)
     (progn
       (if __hand_cmd (setq _hand_cmd (car __hand_cmd)))
       _hand_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hand_type
    4 (length _hand_type)
    ;; uint8[2] _ctrl_mode
    (* 1    2)
    ;; hand_msgs/HandMsg[2] _hand_cmd
    (apply #'+ (send-all _hand_cmd :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hand_type
       (write-long (length _hand_type) s) (princ _hand_type s)
     ;; uint8[2] _ctrl_mode
     (princ _ctrl_mode s)
     ;; hand_msgs/HandMsg[2] _hand_cmd
     (dolist (elem _hand_cmd)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hand_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hand_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8[2] _ctrl_mode
   (setq _ctrl_mode (make-array 2 :element-type :char))
   (replace _ctrl_mode buf :start2 ptr-) (incf ptr- 2)
   ;; hand_msgs/HandMsg[2] _hand_cmd
   (dotimes (i 2)
     (send (elt _hand_cmd i) :deserialize buf ptr-) (incf ptr- (send (elt _hand_cmd i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get hand_msgs::HandCmd :md5sum-) "cc671eacc3dec085edca419077f5b87a")
(setf (get hand_msgs::HandCmd :datatype-) "hand_msgs/HandCmd")
(setf (get hand_msgs::HandCmd :definition-)
      "std_msgs/Header header
string hand_type

uint8[2] ctrl_mode

HandMsg[2] hand_cmd

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

================================================================================
MSG: hand_msgs/HandMsg
std_msgs/Header header

string[]  names
float32[] pos
float32[] vel
float32[] current
float32[] time

")



(provide :hand_msgs/HandCmd "cc671eacc3dec085edca419077f5b87a")


