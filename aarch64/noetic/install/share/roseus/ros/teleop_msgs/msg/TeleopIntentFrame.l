;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopIntentFrame)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopIntentFrame (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPINTENTFRAME")
  (make-package "TELEOP_MSGS::TELEOPINTENTFRAME"))

(in-package "ROS")
;;//! \htmlinclude TeleopIntentFrame.msg.html
(if (not (find-package "CONTROLLER_MSGS"))
  (ros::roseus-add-msgs "controller_msgs"))
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SCHEMA_VERSION*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SCHEMA_VERSION* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SCHEMA_VERSION* 1)
(intern "*SOURCE_UNKNOWN*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SOURCE_UNKNOWN* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SOURCE_UNKNOWN* 0)
(intern "*SOURCE_VR*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SOURCE_VR* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SOURCE_VR* 1)
(intern "*SOURCE_MOCAP*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SOURCE_MOCAP* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SOURCE_MOCAP* 2)
(intern "*SOURCE_GLOVE*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SOURCE_GLOVE* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SOURCE_GLOVE* 3)
(intern "*SOURCE_FUSED*" (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(shadow '*SOURCE_FUSED* (find-package "TELEOP_MSGS::TELEOPINTENTFRAME"))
(defconstant teleop_msgs::TeleopIntentFrame::*SOURCE_FUSED* 4)

(defun teleop_msgs::TeleopIntentFrame-to-symbol (const)
  (cond
        ((= const 1) 'teleop_msgs::TeleopIntentFrame::*SCHEMA_VERSION*)
        ((= const 0) 'teleop_msgs::TeleopIntentFrame::*SOURCE_UNKNOWN*)
        ((= const 1) 'teleop_msgs::TeleopIntentFrame::*SOURCE_VR*)
        ((= const 2) 'teleop_msgs::TeleopIntentFrame::*SOURCE_MOCAP*)
        ((= const 3) 'teleop_msgs::TeleopIntentFrame::*SOURCE_GLOVE*)
        ((= const 4) 'teleop_msgs::TeleopIntentFrame::*SOURCE_FUSED*)
        (t nil)))

(defclass teleop_msgs::TeleopIntentFrame
  :super ros::object
  :slots (_header _schema_version _source _source_mask _reference_frame _reference_pose _targets _raw_valid _raw _head_control_selected _retarget_valid _retarget_joints ))

(defmethod teleop_msgs::TeleopIntentFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:schema_version __schema_version) 0)
    ((:source __source) 0)
    ((:source_mask __source_mask) 0)
    ((:reference_frame __reference_frame) "")
    ((:reference_pose __reference_pose) (instance geometry_msgs::Pose :init))
    ((:targets __targets) ())
    ((:raw_valid __raw_valid) nil)
    ((:raw __raw) (instance teleop_msgs::TeleopRawInput :init))
    ((:head_control_selected __head_control_selected) nil)
    ((:retarget_valid __retarget_valid) nil)
    ((:retarget_joints __retarget_joints) (instance controller_msgs::JointCmd :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _schema_version (round __schema_version))
   (setq _source (round __source))
   (setq _source_mask (round __source_mask))
   (setq _reference_frame (string __reference_frame))
   (setq _reference_pose __reference_pose)
   (setq _targets __targets)
   (setq _raw_valid __raw_valid)
   (setq _raw __raw)
   (setq _head_control_selected __head_control_selected)
   (setq _retarget_valid __retarget_valid)
   (setq _retarget_joints __retarget_joints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:schema_version
   (&optional __schema_version)
   (if __schema_version (setq _schema_version __schema_version)) _schema_version)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:source_mask
   (&optional __source_mask)
   (if __source_mask (setq _source_mask __source_mask)) _source_mask)
  (:reference_frame
   (&optional __reference_frame)
   (if __reference_frame (setq _reference_frame __reference_frame)) _reference_frame)
  (:reference_pose
   (&rest __reference_pose)
   (if (keywordp (car __reference_pose))
       (send* _reference_pose __reference_pose)
     (progn
       (if __reference_pose (setq _reference_pose (car __reference_pose)))
       _reference_pose)))
  (:targets
   (&rest __targets)
   (if (keywordp (car __targets))
       (send* _targets __targets)
     (progn
       (if __targets (setq _targets (car __targets)))
       _targets)))
  (:raw_valid
   (&optional (__raw_valid :null))
   (if (not (eq __raw_valid :null)) (setq _raw_valid __raw_valid)) _raw_valid)
  (:raw
   (&rest __raw)
   (if (keywordp (car __raw))
       (send* _raw __raw)
     (progn
       (if __raw (setq _raw (car __raw)))
       _raw)))
  (:head_control_selected
   (&optional (__head_control_selected :null))
   (if (not (eq __head_control_selected :null)) (setq _head_control_selected __head_control_selected)) _head_control_selected)
  (:retarget_valid
   (&optional (__retarget_valid :null))
   (if (not (eq __retarget_valid :null)) (setq _retarget_valid __retarget_valid)) _retarget_valid)
  (:retarget_joints
   (&rest __retarget_joints)
   (if (keywordp (car __retarget_joints))
       (send* _retarget_joints __retarget_joints)
     (progn
       (if __retarget_joints (setq _retarget_joints (car __retarget_joints)))
       _retarget_joints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _schema_version
    2
    ;; uint8 _source
    1
    ;; uint32 _source_mask
    4
    ;; string _reference_frame
    4 (length _reference_frame)
    ;; geometry_msgs/Pose _reference_pose
    (send _reference_pose :serialization-length)
    ;; teleop_msgs/TeleopTarget[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ;; bool _raw_valid
    1
    ;; teleop_msgs/TeleopRawInput _raw
    (send _raw :serialization-length)
    ;; bool _head_control_selected
    1
    ;; bool _retarget_valid
    1
    ;; controller_msgs/JointCmd _retarget_joints
    (send _retarget_joints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _schema_version
       (write-word _schema_version s)
     ;; uint8 _source
       (write-byte _source s)
     ;; uint32 _source_mask
       (write-long _source_mask s)
     ;; string _reference_frame
       (write-long (length _reference_frame) s) (princ _reference_frame s)
     ;; geometry_msgs/Pose _reference_pose
       (send _reference_pose :serialize s)
     ;; teleop_msgs/TeleopTarget[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (send elem :serialize s)
       )
     ;; bool _raw_valid
       (if _raw_valid (write-byte -1 s) (write-byte 0 s))
     ;; teleop_msgs/TeleopRawInput _raw
       (send _raw :serialize s)
     ;; bool _head_control_selected
       (if _head_control_selected (write-byte -1 s) (write-byte 0 s))
     ;; bool _retarget_valid
       (if _retarget_valid (write-byte -1 s) (write-byte 0 s))
     ;; controller_msgs/JointCmd _retarget_joints
       (send _retarget_joints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _schema_version
     (setq _schema_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _source_mask
     (setq _source_mask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _reference_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _reference_pose
     (send _reference_pose :deserialize buf ptr-) (incf ptr- (send _reference_pose :serialization-length))
   ;; teleop_msgs/TeleopTarget[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (let (r) (dotimes (i n) (push (instance teleop_msgs::TeleopTarget :init) r)) r))
     (dolist (elem- _targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _raw_valid
     (setq _raw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; teleop_msgs/TeleopRawInput _raw
     (send _raw :deserialize buf ptr-) (incf ptr- (send _raw :serialization-length))
   ;; bool _head_control_selected
     (setq _head_control_selected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _retarget_valid
     (setq _retarget_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; controller_msgs/JointCmd _retarget_joints
     (send _retarget_joints :deserialize buf ptr-) (incf ptr- (send _retarget_joints :serialization-length))
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopIntentFrame :md5sum-) "c3147143ffcdf2121d4c65dce9c5f350")
(setf (get teleop_msgs::TeleopIntentFrame :datatype-) "teleop_msgs/TeleopIntentFrame")
(setf (get teleop_msgs::TeleopIntentFrame :definition-)
      "# 遥操作意图帧。输入汇聚层每组装出一个操作者帧，发布至多一条本消息。
# 承载「操作者想做什么」，不承载任何控制决策。

# stamp 为帧组装时刻；seq 为帧序号，供接收方检测丢帧。
std_msgs/Header header

uint16 SCHEMA_VERSION=1
uint16 schema_version

# 本帧的主输入源
uint8 SOURCE_UNKNOWN=0
uint8 SOURCE_VR=1
uint8 SOURCE_MOCAP=2
uint8 SOURCE_GLOVE=3
uint8 SOURCE_FUSED=4
uint8 source

# 参与本帧合成的全部输入源，按 1 << SOURCE_* 置位
uint32 source_mask

# targets 中位姿所在参考系的名称
string reference_frame

# 当参考系本身是运行时位姿（例如随头部偏航的参考系）时给出其位姿。
# 参考系为静态具名坐标系时填单位位姿。
geometry_msgs/Pose reference_pose

# 本帧的跟踪目标。目标缺席即表示该肢体本帧无输入。
teleop_msgs/TeleopTarget[] targets

# 原始输入是否有效。纯动捕帧没有手柄输入时为 false。
bool raw_valid
teleop_msgs/TeleopRawInput raw

# 操作者侧选项：是否选择了「控头」。
# 来源可能是 VR 应用内的选择，也可能是兼容服务设置，不属于设备原始输入。
bool head_control_selected

# 全身重定向结果是否有效。是否真正下发由接收方决定。
bool retarget_valid
controller_msgs/JointCmd retarget_joints

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: teleop_msgs/TeleopTarget
# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。
# 作为 TeleopIntentFrame.targets 的元素使用。

# 目标名。约定值：left_hand / right_hand / head / torso / base /
# left_foot / right_foot / left_wrist / right_wrist。
# 新增跟踪目标只需约定新名字，不需要改本消息。
string name

# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。
geometry_msgs/Pose pose

# 数据可信度。接收方据此决定跟随、降级还是忽略。
uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略
uint8 VALIDITY_VALID=1         # 新鲜可用
uint8 VALIDITY_STALE=2         # 有数据但已超期
uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测
uint8 validity

# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，
# 接收方据此判断单个目标的新鲜度。
time source_stamp

================================================================================
MSG: teleop_msgs/TeleopRawInput
# 操作者控制器的原始输入量。
# 发送方不解释任何按键含义，组合键语义一律由接收方解释。

# 模拟量，范围 0.0 ~ 1.0
float32 left_trigger
float32 right_trigger
float32 left_grip
float32 right_grip

# 摇杆，[x, y]，范围 -1.0 ~ 1.0
float32[2] left_stick
float32[2] right_stick

# 按键位掩码。预留高位，新增按键不需要改本消息。
uint32 BTN_LEFT_X=1
uint32 BTN_LEFT_Y=2
uint32 BTN_RIGHT_A=4
uint32 BTN_RIGHT_B=8
uint32 BTN_LEFT_STICK=16         # 左摇杆按下
uint32 BTN_RIGHT_STICK=32        # 右摇杆按下
uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态
uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态
uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态
uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态
uint32 BTN_LEFT_THUMBREST=1024
uint32 BTN_RIGHT_THUMBREST=2048
uint32 buttons

# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。
# 接收方不得把「设备未提供」当成「按键未按下」。
uint32 buttons_valid

================================================================================
MSG: controller_msgs/JointCmd
std_msgs/Header header

string[]  names
float32[] q
float32[] v
float32[] tau
float32[] kp
float32[] kd
uint8[] mode
uint32 na

")



(provide :teleop_msgs/TeleopIntentFrame "c3147143ffcdf2121d4c65dce9c5f350")


