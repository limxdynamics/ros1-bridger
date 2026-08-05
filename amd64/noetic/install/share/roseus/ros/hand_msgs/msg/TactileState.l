;; Auto-generated. Do not edit!


(when (boundp 'hand_msgs::TactileState)
  (if (not (find-package "HAND_MSGS"))
    (make-package "HAND_MSGS"))
  (shadow 'TactileState (find-package "HAND_MSGS")))
(unless (find-package "HAND_MSGS::TACTILESTATE")
  (make-package "HAND_MSGS::TACTILESTATE"))

(in-package "ROS")
;;//! \htmlinclude TactileState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hand_msgs::TactileState
  :super ros::object
  :slots (_header _names _normal_force _tangential_force _direction_angle _approximate_value _tactile_state ))

(defmethod hand_msgs::TactileState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:normal_force __normal_force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tangential_force __tangential_force) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:direction_angle __direction_angle) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:approximate_value __approximate_value) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tactile_state __tactile_state) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _normal_force __normal_force)
   (setq _tangential_force __tangential_force)
   (setq _direction_angle __direction_angle)
   (setq _approximate_value __approximate_value)
   (setq _tactile_state __tactile_state)
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
  (:normal_force
   (&optional __normal_force)
   (if __normal_force (setq _normal_force __normal_force)) _normal_force)
  (:tangential_force
   (&optional __tangential_force)
   (if __tangential_force (setq _tangential_force __tangential_force)) _tangential_force)
  (:direction_angle
   (&optional __direction_angle)
   (if __direction_angle (setq _direction_angle __direction_angle)) _direction_angle)
  (:approximate_value
   (&optional __approximate_value)
   (if __approximate_value (setq _approximate_value __approximate_value)) _approximate_value)
  (:tactile_state
   (&optional __tactile_state)
   (if __tactile_state (setq _tactile_state __tactile_state)) _tactile_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float32[] _normal_force
    (* 4    (length _normal_force)) 4
    ;; float32[] _tangential_force
    (* 4    (length _tangential_force)) 4
    ;; float32[] _direction_angle
    (* 4    (length _direction_angle)) 4
    ;; uint32[] _approximate_value
    (* 4    (length _approximate_value)) 4
    ;; uint16[] _tactile_state
    (* 2    (length _tactile_state)) 4
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
     ;; float32[] _normal_force
     (write-long (length _normal_force) s)
     (dotimes (i (length _normal_force))
       (sys::poke (elt _normal_force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _tangential_force
     (write-long (length _tangential_force) s)
     (dotimes (i (length _tangential_force))
       (sys::poke (elt _tangential_force i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _direction_angle
     (write-long (length _direction_angle) s)
     (dotimes (i (length _direction_angle))
       (sys::poke (elt _direction_angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32[] _approximate_value
     (write-long (length _approximate_value) s)
     (dotimes (i (length _approximate_value))
       (write-long (elt _approximate_value i) s)
       )
     ;; uint16[] _tactile_state
     (write-long (length _tactile_state) s)
     (dotimes (i (length _tactile_state))
       (write-word (elt _tactile_state i) s)
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
   ;; float32[] _normal_force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _normal_force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _normal_force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _tangential_force
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tangential_force (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tangential_force i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _direction_angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction_angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _direction_angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32[] _approximate_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _approximate_value (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _approximate_value i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint16[] _tactile_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tactile_state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tactile_state i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get hand_msgs::TactileState :md5sum-) "b8b0b952da0486df66b2e68584d4b3c2")
(setf (get hand_msgs::TactileState :datatype-) "hand_msgs/TactileState")
(setf (get hand_msgs::TactileState :definition-)
      "std_msgs/Header header

string[]  names
float32[] normal_force             
float32[] tangential_force         
float32[] direction_angle          
uint32[] approximate_value         
uint16[] tactile_state             

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



(provide :hand_msgs/TactileState "b8b0b952da0486df66b2e68584d4b3c2")


