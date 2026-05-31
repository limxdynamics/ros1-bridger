;; Auto-generated. Do not edit!


(when (boundp 'controller_msgs::JointCmdLimx)
  (if (not (find-package "CONTROLLER_MSGS"))
    (make-package "CONTROLLER_MSGS"))
  (shadow 'JointCmdLimx (find-package "CONTROLLER_MSGS")))
(unless (find-package "CONTROLLER_MSGS::JOINTCMDLIMX")
  (make-package "CONTROLLER_MSGS::JOINTCMDLIMX"))

(in-package "ROS")
;;//! \htmlinclude JointCmdLimx.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass controller_msgs::JointCmdLimx
  :super ros::object
  :slots (_header _names _q _v _tau _kp _kd _mode _na _parallel_solver_mode ))

(defmethod controller_msgs::JointCmdLimx
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:q __q) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:v __v) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tau __tau) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mode __mode) (make-array 0 :initial-element 0 :element-type :char))
    ((:na __na) 0)
    ((:parallel_solver_mode __parallel_solver_mode) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _q __q)
   (setq _v __v)
   (setq _tau __tau)
   (setq _kp __kp)
   (setq _kd __kd)
   (setq _mode __mode)
   (setq _na (round __na))
   (setq _parallel_solver_mode __parallel_solver_mode)
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
  (:tau
   (&optional __tau)
   (if __tau (setq _tau __tau)) _tau)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:na
   (&optional __na)
   (if __na (setq _na __na)) _na)
  (:parallel_solver_mode
   (&optional __parallel_solver_mode)
   (if __parallel_solver_mode (setq _parallel_solver_mode __parallel_solver_mode)) _parallel_solver_mode)
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
    ;; float32[] _tau
    (* 4    (length _tau)) 4
    ;; float32[] _kp
    (* 4    (length _kp)) 4
    ;; float32[] _kd
    (* 4    (length _kd)) 4
    ;; uint8[] _mode
    (* 1    (length _mode)) 4
    ;; uint32 _na
    4
    ;; uint8[] _parallel_solver_mode
    (* 1    (length _parallel_solver_mode)) 4
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
     ;; float32[] _tau
     (write-long (length _tau) s)
     (dotimes (i (length _tau))
       (sys::poke (elt _tau i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kp
     (write-long (length _kp) s)
     (dotimes (i (length _kp))
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kd
     (write-long (length _kd) s)
     (dotimes (i (length _kd))
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _mode
     (write-long (length _mode) s)
     (princ _mode s)
     ;; uint32 _na
       (write-long _na s)
     ;; uint8[] _parallel_solver_mode
     (write-long (length _parallel_solver_mode) s)
     (princ _parallel_solver_mode s)
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
   ;; float32[] _tau
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tau (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tau i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _mode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _mode (make-array n :element-type :char))
     (replace _mode buf :start2 ptr-) (incf ptr- n))
   ;; uint32 _na
     (setq _na (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _parallel_solver_mode
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _parallel_solver_mode (make-array n :element-type :char))
     (replace _parallel_solver_mode buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get controller_msgs::JointCmdLimx :md5sum-) "aa66c708f26b270ba9c935d9e8db6182")
(setf (get controller_msgs::JointCmdLimx :datatype-) "controller_msgs/JointCmdLimx")
(setf (get controller_msgs::JointCmdLimx :definition-)
      "std_msgs/Header header

string[]  names
float32[] q
float32[] v
float32[] tau
float32[] kp
float32[] kd
uint8[] mode
uint32 na
uint8[] parallel_solver_mode

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



(provide :controller_msgs/JointCmdLimx "aa66c708f26b270ba9c935d9e8db6182")


