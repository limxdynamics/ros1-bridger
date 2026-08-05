;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::VRState)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'VRState (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::VRSTATE")
  (make-package "TELEOP_MSGS::VRSTATE"))

(in-package "ROS")
;;//! \htmlinclude VRState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teleop_msgs::VRState
  :super ros::object
  :slots (_header _eyePose _l _r _leftJS _leftTrig _leftGrip _LThU _LTr _LG _X _Y _rightJS _rightTrig _rightGrip _RThU _RTr _RG _A _B ))

(defmethod teleop_msgs::VRState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:eyePose __eyePose) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:l __l) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:r __r) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:leftJS __leftJS) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:leftTrig __leftTrig) 0.0)
    ((:leftGrip __leftGrip) 0.0)
    ((:LThU __LThU) nil)
    ((:LTr __LTr) nil)
    ((:LG __LG) nil)
    ((:X __X) nil)
    ((:Y __Y) nil)
    ((:rightJS __rightJS) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:rightTrig __rightTrig) 0.0)
    ((:rightGrip __rightGrip) 0.0)
    ((:RThU __RThU) nil)
    ((:RTr __RTr) nil)
    ((:RG __RG) nil)
    ((:A __A) nil)
    ((:B __B) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _eyePose __eyePose)
   (setq _l __l)
   (setq _r __r)
   (setq _leftJS __leftJS)
   (setq _leftTrig (float __leftTrig))
   (setq _leftGrip (float __leftGrip))
   (setq _LThU __LThU)
   (setq _LTr __LTr)
   (setq _LG __LG)
   (setq _X __X)
   (setq _Y __Y)
   (setq _rightJS __rightJS)
   (setq _rightTrig (float __rightTrig))
   (setq _rightGrip (float __rightGrip))
   (setq _RThU __RThU)
   (setq _RTr __RTr)
   (setq _RG __RG)
   (setq _A __A)
   (setq _B __B)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:eyePose
   (&optional __eyePose)
   (if __eyePose (setq _eyePose __eyePose)) _eyePose)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:leftJS
   (&optional __leftJS)
   (if __leftJS (setq _leftJS __leftJS)) _leftJS)
  (:leftTrig
   (&optional __leftTrig)
   (if __leftTrig (setq _leftTrig __leftTrig)) _leftTrig)
  (:leftGrip
   (&optional __leftGrip)
   (if __leftGrip (setq _leftGrip __leftGrip)) _leftGrip)
  (:LThU
   (&optional (__LThU :null))
   (if (not (eq __LThU :null)) (setq _LThU __LThU)) _LThU)
  (:LTr
   (&optional (__LTr :null))
   (if (not (eq __LTr :null)) (setq _LTr __LTr)) _LTr)
  (:LG
   (&optional (__LG :null))
   (if (not (eq __LG :null)) (setq _LG __LG)) _LG)
  (:X
   (&optional (__X :null))
   (if (not (eq __X :null)) (setq _X __X)) _X)
  (:Y
   (&optional (__Y :null))
   (if (not (eq __Y :null)) (setq _Y __Y)) _Y)
  (:rightJS
   (&optional __rightJS)
   (if __rightJS (setq _rightJS __rightJS)) _rightJS)
  (:rightTrig
   (&optional __rightTrig)
   (if __rightTrig (setq _rightTrig __rightTrig)) _rightTrig)
  (:rightGrip
   (&optional __rightGrip)
   (if __rightGrip (setq _rightGrip __rightGrip)) _rightGrip)
  (:RThU
   (&optional (__RThU :null))
   (if (not (eq __RThU :null)) (setq _RThU __RThU)) _RThU)
  (:RTr
   (&optional (__RTr :null))
   (if (not (eq __RTr :null)) (setq _RTr __RTr)) _RTr)
  (:RG
   (&optional (__RG :null))
   (if (not (eq __RG :null)) (setq _RG __RG)) _RG)
  (:A
   (&optional (__A :null))
   (if (not (eq __A :null)) (setq _A __A)) _A)
  (:B
   (&optional (__B :null))
   (if (not (eq __B :null)) (setq _B __B)) _B)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[16] _eyePose
    (* 4    16)
    ;; float32[16] _l
    (* 4    16)
    ;; float32[16] _r
    (* 4    16)
    ;; float32[2] _leftJS
    (* 4    2)
    ;; float32 _leftTrig
    4
    ;; float32 _leftGrip
    4
    ;; bool _LThU
    1
    ;; bool _LTr
    1
    ;; bool _LG
    1
    ;; bool _X
    1
    ;; bool _Y
    1
    ;; float32[2] _rightJS
    (* 4    2)
    ;; float32 _rightTrig
    4
    ;; float32 _rightGrip
    4
    ;; bool _RThU
    1
    ;; bool _RTr
    1
    ;; bool _RG
    1
    ;; bool _A
    1
    ;; bool _B
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[16] _eyePose
     (dotimes (i 16)
       (sys::poke (elt _eyePose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[16] _l
     (dotimes (i 16)
       (sys::poke (elt _l i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[16] _r
     (dotimes (i 16)
       (sys::poke (elt _r i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _leftJS
     (dotimes (i 2)
       (sys::poke (elt _leftJS i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _leftTrig
       (sys::poke _leftTrig (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _leftGrip
       (sys::poke _leftGrip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _LThU
       (if _LThU (write-byte -1 s) (write-byte 0 s))
     ;; bool _LTr
       (if _LTr (write-byte -1 s) (write-byte 0 s))
     ;; bool _LG
       (if _LG (write-byte -1 s) (write-byte 0 s))
     ;; bool _X
       (if _X (write-byte -1 s) (write-byte 0 s))
     ;; bool _Y
       (if _Y (write-byte -1 s) (write-byte 0 s))
     ;; float32[2] _rightJS
     (dotimes (i 2)
       (sys::poke (elt _rightJS i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _rightTrig
       (sys::poke _rightTrig (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rightGrip
       (sys::poke _rightGrip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _RThU
       (if _RThU (write-byte -1 s) (write-byte 0 s))
     ;; bool _RTr
       (if _RTr (write-byte -1 s) (write-byte 0 s))
     ;; bool _RG
       (if _RG (write-byte -1 s) (write-byte 0 s))
     ;; bool _A
       (if _A (write-byte -1 s) (write-byte 0 s))
     ;; bool _B
       (if _B (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[16] _eyePose
   (dotimes (i (length _eyePose))
     (setf (elt _eyePose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[16] _l
   (dotimes (i (length _l))
     (setf (elt _l i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[16] _r
   (dotimes (i (length _r))
     (setf (elt _r i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _leftJS
   (dotimes (i (length _leftJS))
     (setf (elt _leftJS i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _leftTrig
     (setq _leftTrig (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _leftGrip
     (setq _leftGrip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _LThU
     (setq _LThU (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LTr
     (setq _LTr (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LG
     (setq _LG (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _X
     (setq _X (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Y
     (setq _Y (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[2] _rightJS
   (dotimes (i (length _rightJS))
     (setf (elt _rightJS i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _rightTrig
     (setq _rightTrig (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rightGrip
     (setq _rightGrip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _RThU
     (setq _RThU (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RTr
     (setq _RTr (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RG
     (setq _RG (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _A
     (setq _A (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _B
     (setq _B (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get teleop_msgs::VRState :md5sum-) "00c31bc920504fb5ee84c550ff4ee100")
(setf (get teleop_msgs::VRState :datatype-) "teleop_msgs/VRState")
(setf (get teleop_msgs::VRState :definition-)
      "std_msgs/Header header
float32[16] eyePose  # 眼镜位置姿态矩阵 4x4
float32[16] l   # 左手柄姿态矩阵 4x4
float32[16] r   # 右手柄姿态矩阵 4x4

float32[2] leftJS # 左摇杆
float32 leftTrig  # 左扳机
float32 leftGrip  # 左 Grip 键
bool LThU  # 左拇指（布尔值）
bool LTr   # 左扳机（布尔值）
bool LG    # 左 Grip 键（布尔值）
bool X     # X 键
bool Y     # Y 键

float32[2] rightJS  # 右摇杆
float32 rightTrig   # 右扳机
float32 rightGrip   # 右 Grip 键
bool RThU  # 右拇指（布尔值）
bool RTr   # 右扳机（布尔值）
bool RG    # 右 Grip 键（布尔值）
bool A     # A 键
bool B     # B 键

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



(provide :teleop_msgs/VRState "00c31bc920504fb5ee84c550ff4ee100")


