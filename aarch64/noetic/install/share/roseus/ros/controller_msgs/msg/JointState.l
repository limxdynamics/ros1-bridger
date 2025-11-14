;; Auto-generated. Do not edit!


(when (boundp 'controller_msgs::JointState)
  (if (not (find-package "CONTROLLER_MSGS"))
    (make-package "CONTROLLER_MSGS"))
  (shadow 'JointState (find-package "CONTROLLER_MSGS")))
(unless (find-package "CONTROLLER_MSGS::JOINTSTATE")
  (make-package "CONTROLLER_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass controller_msgs::JointState
  :super ros::object
  :slots (_header _names _q _v _vd _tau _na ))

(defmethod controller_msgs::JointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vd __vd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tau __tau) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:na __na) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _q __q)
   (setq _v __v)
   (setq _vd __vd)
   (setq _tau __tau)
   (setq _na (round __na))
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
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:vd
   (&optional __vd)
   (if __vd (setq _vd __vd)) _vd)
  (:tau
   (&optional __tau)
   (if __tau (setq _tau __tau)) _tau)
  (:na
   (&optional __na)
   (if __na (setq _na __na)) _na)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float32[] _q
    (* 4    (length _q)) 4
    ;; float32[] _v
    (* 4    (length _v)) 4
    ;; float32[] _vd
    (* 4    (length _vd)) 4
    ;; float32[] _tau
    (* 4    (length _tau)) 4
    ;; uint32 _na
    4
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
     ;; float32[] _q
     (write-long (length _q) s)
     (dotimes (i (length _q))
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
       (sys::poke (elt _v i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _vd
     (write-long (length _vd) s)
     (dotimes (i (length _vd))
       (sys::poke (elt _vd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _tau
     (write-long (length _tau) s)
     (dotimes (i (length _tau))
       (sys::poke (elt _tau i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _na
       (write-long _na s)
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
   ;; float32[] _q
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _q (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _q i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _vd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _tau
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tau (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tau i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32 _na
     (setq _na (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get controller_msgs::JointState :md5sum-) "0d1d997e638ba23ee585b83a152596fe")
(setf (get controller_msgs::JointState :datatype-) "controller_msgs/JointState")
(setf (get controller_msgs::JointState :definition-)
      "std_msgs/Header header

string[]  names
float32[] q
float32[] v
float32[] vd
float32[] tau
uint32 na

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



(provide :controller_msgs/JointState "0d1d997e638ba23ee585b83a152596fe")


