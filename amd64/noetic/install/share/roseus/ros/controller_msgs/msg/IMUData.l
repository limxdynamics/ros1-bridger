;; Auto-generated. Do not edit!


(when (boundp 'controller_msgs::IMUData)
  (if (not (find-package "CONTROLLER_MSGS"))
    (make-package "CONTROLLER_MSGS"))
  (shadow 'IMUData (find-package "CONTROLLER_MSGS")))
(unless (find-package "CONTROLLER_MSGS::IMUDATA")
  (make-package "CONTROLLER_MSGS::IMUDATA"))

(in-package "ROS")
;;//! \htmlinclude IMUData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass controller_msgs::IMUData
  :super ros::object
  :slots (_header _imustamp _status _euler _quat _acc _gyro ))

(defmethod controller_msgs::IMUData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imustamp __imustamp) 0)
    ((:status __status) 0)
    ((:euler __euler) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:quat __quat) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:acc __acc) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyro __gyro) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _imustamp (round __imustamp))
   (setq _status (round __status))
   (setq _euler __euler)
   (setq _quat __quat)
   (setq _acc __acc)
   (setq _gyro __gyro)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imustamp
   (&optional __imustamp)
   (if __imustamp (setq _imustamp __imustamp)) _imustamp)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:euler
   (&optional __euler)
   (if __euler (setq _euler __euler)) _euler)
  (:quat
   (&optional __quat)
   (if __quat (setq _quat __quat)) _quat)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:gyro
   (&optional __gyro)
   (if __gyro (setq _gyro __gyro)) _gyro)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _imustamp
    8
    ;; uint32 _status
    4
    ;; float64[3] _euler
    (* 8    3)
    ;; float64[4] _quat
    (* 8    4)
    ;; float64[3] _acc
    (* 8    3)
    ;; float64[3] _gyro
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _imustamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _imustamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _imustamp) (= (length (_imustamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_imustamp . bv) 0) 0) s)
              (write-long (ash (elt (_imustamp . bv) 1) -1) s))
             ((and (class _imustamp) (= (length (_imustamp . bv)) 1)) ;; big1
              (write-long (elt (_imustamp . bv) 0) s)
              (write-long (if (>= _imustamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _imustamp s)(write-long (if (>= _imustamp 0) 0 #xffffffff) s)))
     ;; uint32 _status
       (write-long _status s)
     ;; float64[3] _euler
     (dotimes (i 3)
       (sys::poke (elt _euler i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _quat
     (dotimes (i 4)
       (sys::poke (elt _quat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _acc
     (dotimes (i 3)
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _gyro
     (dotimes (i 3)
       (sys::poke (elt _gyro i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _imustamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _imustamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _imustamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[3] _euler
   (dotimes (i (length _euler))
     (setf (elt _euler i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _quat
   (dotimes (i (length _quat))
     (setf (elt _quat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _acc
   (dotimes (i (length _acc))
     (setf (elt _acc i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _gyro
   (dotimes (i (length _gyro))
     (setf (elt _gyro i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get controller_msgs::IMUData :md5sum-) "4713fbd787897a0c91a2a31aa6a873c6")
(setf (get controller_msgs::IMUData :datatype-) "controller_msgs/IMUData")
(setf (get controller_msgs::IMUData :definition-)
      "std_msgs/Header header

uint64 imustamp
uint32 status

float64[3] euler
float64[4] quat
float64[3] acc
float64[3] gyro

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



(provide :controller_msgs/IMUData "4713fbd787897a0c91a2a31aa6a873c6")


