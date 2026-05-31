;; Auto-generated. Do not edit!


(when (boundp 'std_msgs::DurationArray)
  (if (not (find-package "STD_MSGS"))
    (make-package "STD_MSGS"))
  (shadow 'DurationArray (find-package "STD_MSGS")))
(unless (find-package "STD_MSGS::DURATIONARRAY")
  (make-package "STD_MSGS::DURATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DurationArray.msg.html


(defclass std_msgs::DurationArray
  :super ros::object
  :slots (_header _data ))

(defmethod std_msgs::DurationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Duration[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Duration[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Duration[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance std_msgs::Duration :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get std_msgs::DurationArray :md5sum-) "4b47656622a8026ba8097a096def7a9b")
(setf (get std_msgs::DurationArray :datatype-) "std_msgs/DurationArray")
(setf (get std_msgs::DurationArray :definition-)
      "Header  header   # header info
Duration[]  data     # array of data

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
MSG: std_msgs/Duration
duration data

")



(provide :std_msgs/DurationArray "4b47656622a8026ba8097a096def7a9b")


