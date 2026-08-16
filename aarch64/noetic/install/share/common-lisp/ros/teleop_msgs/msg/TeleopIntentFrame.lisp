; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopIntentFrame.msg.html

(cl:defclass <TeleopIntentFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (schema_version
    :reader schema_version
    :initarg :schema_version
    :type cl:fixnum
    :initform 0)
   (source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0)
   (source_mask
    :reader source_mask
    :initarg :source_mask
    :type cl:integer
    :initform 0)
   (reference_frame
    :reader reference_frame
    :initarg :reference_frame
    :type cl:string
    :initform "")
   (reference_pose
    :reader reference_pose
    :initarg :reference_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (targets
    :reader targets
    :initarg :targets
    :type (cl:vector teleop_msgs-msg:TeleopTarget)
   :initform (cl:make-array 0 :element-type 'teleop_msgs-msg:TeleopTarget :initial-element (cl:make-instance 'teleop_msgs-msg:TeleopTarget)))
   (raw_valid
    :reader raw_valid
    :initarg :raw_valid
    :type cl:boolean
    :initform cl:nil)
   (raw
    :reader raw
    :initarg :raw
    :type teleop_msgs-msg:TeleopRawInput
    :initform (cl:make-instance 'teleop_msgs-msg:TeleopRawInput))
   (head_control_selected
    :reader head_control_selected
    :initarg :head_control_selected
    :type cl:boolean
    :initform cl:nil)
   (retarget_valid
    :reader retarget_valid
    :initarg :retarget_valid
    :type cl:boolean
    :initform cl:nil)
   (retarget_joints
    :reader retarget_joints
    :initarg :retarget_joints
    :type controller_msgs-msg:JointCmd
    :initform (cl:make-instance 'controller_msgs-msg:JointCmd)))
)

(cl:defclass TeleopIntentFrame (<TeleopIntentFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopIntentFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopIntentFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopIntentFrame> is deprecated: use teleop_msgs-msg:TeleopIntentFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:header-val is deprecated.  Use teleop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'schema_version-val :lambda-list '(m))
(cl:defmethod schema_version-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:schema_version-val is deprecated.  Use teleop_msgs-msg:schema_version instead.")
  (schema_version m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:source-val is deprecated.  Use teleop_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'source_mask-val :lambda-list '(m))
(cl:defmethod source_mask-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:source_mask-val is deprecated.  Use teleop_msgs-msg:source_mask instead.")
  (source_mask m))

(cl:ensure-generic-function 'reference_frame-val :lambda-list '(m))
(cl:defmethod reference_frame-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:reference_frame-val is deprecated.  Use teleop_msgs-msg:reference_frame instead.")
  (reference_frame m))

(cl:ensure-generic-function 'reference_pose-val :lambda-list '(m))
(cl:defmethod reference_pose-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:reference_pose-val is deprecated.  Use teleop_msgs-msg:reference_pose instead.")
  (reference_pose m))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:targets-val is deprecated.  Use teleop_msgs-msg:targets instead.")
  (targets m))

(cl:ensure-generic-function 'raw_valid-val :lambda-list '(m))
(cl:defmethod raw_valid-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:raw_valid-val is deprecated.  Use teleop_msgs-msg:raw_valid instead.")
  (raw_valid m))

(cl:ensure-generic-function 'raw-val :lambda-list '(m))
(cl:defmethod raw-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:raw-val is deprecated.  Use teleop_msgs-msg:raw instead.")
  (raw m))

(cl:ensure-generic-function 'head_control_selected-val :lambda-list '(m))
(cl:defmethod head_control_selected-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:head_control_selected-val is deprecated.  Use teleop_msgs-msg:head_control_selected instead.")
  (head_control_selected m))

(cl:ensure-generic-function 'retarget_valid-val :lambda-list '(m))
(cl:defmethod retarget_valid-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:retarget_valid-val is deprecated.  Use teleop_msgs-msg:retarget_valid instead.")
  (retarget_valid m))

(cl:ensure-generic-function 'retarget_joints-val :lambda-list '(m))
(cl:defmethod retarget_joints-val ((m <TeleopIntentFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:retarget_joints-val is deprecated.  Use teleop_msgs-msg:retarget_joints instead.")
  (retarget_joints m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TeleopIntentFrame>)))
    "Constants for message type '<TeleopIntentFrame>"
  '((:SCHEMA_VERSION . 1)
    (:SOURCE_UNKNOWN . 0)
    (:SOURCE_VR . 1)
    (:SOURCE_MOCAP . 2)
    (:SOURCE_GLOVE . 3)
    (:SOURCE_FUSED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TeleopIntentFrame)))
    "Constants for message type 'TeleopIntentFrame"
  '((:SCHEMA_VERSION . 1)
    (:SOURCE_UNKNOWN . 0)
    (:SOURCE_VR . 1)
    (:SOURCE_MOCAP . 2)
    (:SOURCE_GLOVE . 3)
    (:SOURCE_FUSED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopIntentFrame>) ostream)
  "Serializes a message object of type '<TeleopIntentFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'schema_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'schema_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_mask)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference_frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'raw_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'raw) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'head_control_selected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retarget_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'retarget_joints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopIntentFrame>) istream)
  "Deserializes a message object of type '<TeleopIntentFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'schema_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'schema_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'source_mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'source_mask)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teleop_msgs-msg:TeleopTarget))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'raw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'raw) istream)
    (cl:setf (cl:slot-value msg 'head_control_selected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'retarget_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'retarget_joints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopIntentFrame>)))
  "Returns string type for a message object of type '<TeleopIntentFrame>"
  "teleop_msgs/TeleopIntentFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopIntentFrame)))
  "Returns string type for a message object of type 'TeleopIntentFrame"
  "teleop_msgs/TeleopIntentFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopIntentFrame>)))
  "Returns md5sum for a message object of type '<TeleopIntentFrame>"
  "c3147143ffcdf2121d4c65dce9c5f350")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopIntentFrame)))
  "Returns md5sum for a message object of type 'TeleopIntentFrame"
  "c3147143ffcdf2121d4c65dce9c5f350")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopIntentFrame>)))
  "Returns full string definition for message of type '<TeleopIntentFrame>"
  (cl:format cl:nil "# 遥操作意图帧。输入汇聚层每组装出一个操作者帧，发布至多一条本消息。~%# 承载「操作者想做什么」，不承载任何控制决策。~%~%# stamp 为帧组装时刻；seq 为帧序号，供接收方检测丢帧。~%std_msgs/Header header~%~%uint16 SCHEMA_VERSION=1~%uint16 schema_version~%~%# 本帧的主输入源~%uint8 SOURCE_UNKNOWN=0~%uint8 SOURCE_VR=1~%uint8 SOURCE_MOCAP=2~%uint8 SOURCE_GLOVE=3~%uint8 SOURCE_FUSED=4~%uint8 source~%~%# 参与本帧合成的全部输入源，按 1 << SOURCE_* 置位~%uint32 source_mask~%~%# targets 中位姿所在参考系的名称~%string reference_frame~%~%# 当参考系本身是运行时位姿（例如随头部偏航的参考系）时给出其位姿。~%# 参考系为静态具名坐标系时填单位位姿。~%geometry_msgs/Pose reference_pose~%~%# 本帧的跟踪目标。目标缺席即表示该肢体本帧无输入。~%teleop_msgs/TeleopTarget[] targets~%~%# 原始输入是否有效。纯动捕帧没有手柄输入时为 false。~%bool raw_valid~%teleop_msgs/TeleopRawInput raw~%~%# 操作者侧选项：是否选择了「控头」。~%# 来源可能是 VR 应用内的选择，也可能是兼容服务设置，不属于设备原始输入。~%bool head_control_selected~%~%# 全身重定向结果是否有效。是否真正下发由接收方决定。~%bool retarget_valid~%controller_msgs/JointCmd retarget_joints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: teleop_msgs/TeleopTarget~%# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。~%# 作为 TeleopIntentFrame.targets 的元素使用。~%~%# 目标名。约定值：left_hand / right_hand / head / torso / base /~%# left_foot / right_foot / left_wrist / right_wrist。~%# 新增跟踪目标只需约定新名字，不需要改本消息。~%string name~%~%# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。~%geometry_msgs/Pose pose~%~%# 数据可信度。接收方据此决定跟随、降级还是忽略。~%uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略~%uint8 VALIDITY_VALID=1         # 新鲜可用~%uint8 VALIDITY_STALE=2         # 有数据但已超期~%uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测~%uint8 validity~%~%# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，~%# 接收方据此判断单个目标的新鲜度。~%time source_stamp~%~%================================================================================~%MSG: teleop_msgs/TeleopRawInput~%# 操作者控制器的原始输入量。~%# 发送方不解释任何按键含义，组合键语义一律由接收方解释。~%~%# 模拟量，范围 0.0 ~~ 1.0~%float32 left_trigger~%float32 right_trigger~%float32 left_grip~%float32 right_grip~%~%# 摇杆，[x, y]，范围 -1.0 ~~ 1.0~%float32[2] left_stick~%float32[2] right_stick~%~%# 按键位掩码。预留高位，新增按键不需要改本消息。~%uint32 BTN_LEFT_X=1~%uint32 BTN_LEFT_Y=2~%uint32 BTN_RIGHT_A=4~%uint32 BTN_RIGHT_B=8~%uint32 BTN_LEFT_STICK=16         # 左摇杆按下~%uint32 BTN_RIGHT_STICK=32        # 右摇杆按下~%uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态~%uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态~%uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态~%uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态~%uint32 BTN_LEFT_THUMBREST=1024~%uint32 BTN_RIGHT_THUMBREST=2048~%uint32 buttons~%~%# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。~%# 接收方不得把「设备未提供」当成「按键未按下」。~%uint32 buttons_valid~%~%================================================================================~%MSG: controller_msgs/JointCmd~%std_msgs/Header header~%~%string[]  names~%float32[] q~%float32[] v~%float32[] tau~%float32[] kp~%float32[] kd~%uint8[] mode~%uint32 na~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopIntentFrame)))
  "Returns full string definition for message of type 'TeleopIntentFrame"
  (cl:format cl:nil "# 遥操作意图帧。输入汇聚层每组装出一个操作者帧，发布至多一条本消息。~%# 承载「操作者想做什么」，不承载任何控制决策。~%~%# stamp 为帧组装时刻；seq 为帧序号，供接收方检测丢帧。~%std_msgs/Header header~%~%uint16 SCHEMA_VERSION=1~%uint16 schema_version~%~%# 本帧的主输入源~%uint8 SOURCE_UNKNOWN=0~%uint8 SOURCE_VR=1~%uint8 SOURCE_MOCAP=2~%uint8 SOURCE_GLOVE=3~%uint8 SOURCE_FUSED=4~%uint8 source~%~%# 参与本帧合成的全部输入源，按 1 << SOURCE_* 置位~%uint32 source_mask~%~%# targets 中位姿所在参考系的名称~%string reference_frame~%~%# 当参考系本身是运行时位姿（例如随头部偏航的参考系）时给出其位姿。~%# 参考系为静态具名坐标系时填单位位姿。~%geometry_msgs/Pose reference_pose~%~%# 本帧的跟踪目标。目标缺席即表示该肢体本帧无输入。~%teleop_msgs/TeleopTarget[] targets~%~%# 原始输入是否有效。纯动捕帧没有手柄输入时为 false。~%bool raw_valid~%teleop_msgs/TeleopRawInput raw~%~%# 操作者侧选项：是否选择了「控头」。~%# 来源可能是 VR 应用内的选择，也可能是兼容服务设置，不属于设备原始输入。~%bool head_control_selected~%~%# 全身重定向结果是否有效。是否真正下发由接收方决定。~%bool retarget_valid~%controller_msgs/JointCmd retarget_joints~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: teleop_msgs/TeleopTarget~%# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。~%# 作为 TeleopIntentFrame.targets 的元素使用。~%~%# 目标名。约定值：left_hand / right_hand / head / torso / base /~%# left_foot / right_foot / left_wrist / right_wrist。~%# 新增跟踪目标只需约定新名字，不需要改本消息。~%string name~%~%# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。~%geometry_msgs/Pose pose~%~%# 数据可信度。接收方据此决定跟随、降级还是忽略。~%uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略~%uint8 VALIDITY_VALID=1         # 新鲜可用~%uint8 VALIDITY_STALE=2         # 有数据但已超期~%uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测~%uint8 validity~%~%# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，~%# 接收方据此判断单个目标的新鲜度。~%time source_stamp~%~%================================================================================~%MSG: teleop_msgs/TeleopRawInput~%# 操作者控制器的原始输入量。~%# 发送方不解释任何按键含义，组合键语义一律由接收方解释。~%~%# 模拟量，范围 0.0 ~~ 1.0~%float32 left_trigger~%float32 right_trigger~%float32 left_grip~%float32 right_grip~%~%# 摇杆，[x, y]，范围 -1.0 ~~ 1.0~%float32[2] left_stick~%float32[2] right_stick~%~%# 按键位掩码。预留高位，新增按键不需要改本消息。~%uint32 BTN_LEFT_X=1~%uint32 BTN_LEFT_Y=2~%uint32 BTN_RIGHT_A=4~%uint32 BTN_RIGHT_B=8~%uint32 BTN_LEFT_STICK=16         # 左摇杆按下~%uint32 BTN_RIGHT_STICK=32        # 右摇杆按下~%uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态~%uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态~%uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态~%uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态~%uint32 BTN_LEFT_THUMBREST=1024~%uint32 BTN_RIGHT_THUMBREST=2048~%uint32 buttons~%~%# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。~%# 接收方不得把「设备未提供」当成「按键未按下」。~%uint32 buttons_valid~%~%================================================================================~%MSG: controller_msgs/JointCmd~%std_msgs/Header header~%~%string[]  names~%float32[] q~%float32[] v~%float32[] tau~%float32[] kp~%float32[] kd~%uint8[] mode~%uint32 na~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopIntentFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     4
     4 (cl:length (cl:slot-value msg 'reference_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'raw))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'retarget_joints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopIntentFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopIntentFrame
    (cl:cons ':header (header msg))
    (cl:cons ':schema_version (schema_version msg))
    (cl:cons ':source (source msg))
    (cl:cons ':source_mask (source_mask msg))
    (cl:cons ':reference_frame (reference_frame msg))
    (cl:cons ':reference_pose (reference_pose msg))
    (cl:cons ':targets (targets msg))
    (cl:cons ':raw_valid (raw_valid msg))
    (cl:cons ':raw (raw msg))
    (cl:cons ':head_control_selected (head_control_selected msg))
    (cl:cons ':retarget_valid (retarget_valid msg))
    (cl:cons ':retarget_joints (retarget_joints msg))
))
