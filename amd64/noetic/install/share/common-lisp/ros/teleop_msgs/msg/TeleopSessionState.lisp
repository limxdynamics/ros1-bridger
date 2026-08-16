; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopSessionState.msg.html

(cl:defclass <TeleopSessionState> (roslisp-msg-protocol:ros-message)
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
   (session_state
    :reader session_state
    :initarg :session_state
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (limbs
    :reader limbs
    :initarg :limbs
    :type (cl:vector teleop_msgs-msg:TeleopLimbState)
   :initform (cl:make-array 0 :element-type 'teleop_msgs-msg:TeleopLimbState :initial-element (cl:make-instance 'teleop_msgs-msg:TeleopLimbState)))
   (reanchor_epoch
    :reader reanchor_epoch
    :initarg :reanchor_epoch
    :type cl:integer
    :initform 0)
   (retarget_required
    :reader retarget_required
    :initarg :retarget_required
    :type cl:boolean
    :initform cl:nil)
   (fault_code
    :reader fault_code
    :initarg :fault_code
    :type cl:fixnum
    :initform 0)
   (fault_detail
    :reader fault_detail
    :initarg :fault_detail
    :type cl:string
    :initform ""))
)

(cl:defclass TeleopSessionState (<TeleopSessionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopSessionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopSessionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopSessionState> is deprecated: use teleop_msgs-msg:TeleopSessionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:header-val is deprecated.  Use teleop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'schema_version-val :lambda-list '(m))
(cl:defmethod schema_version-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:schema_version-val is deprecated.  Use teleop_msgs-msg:schema_version instead.")
  (schema_version m))

(cl:ensure-generic-function 'session_state-val :lambda-list '(m))
(cl:defmethod session_state-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:session_state-val is deprecated.  Use teleop_msgs-msg:session_state instead.")
  (session_state m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:mode-val is deprecated.  Use teleop_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'limbs-val :lambda-list '(m))
(cl:defmethod limbs-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:limbs-val is deprecated.  Use teleop_msgs-msg:limbs instead.")
  (limbs m))

(cl:ensure-generic-function 'reanchor_epoch-val :lambda-list '(m))
(cl:defmethod reanchor_epoch-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:reanchor_epoch-val is deprecated.  Use teleop_msgs-msg:reanchor_epoch instead.")
  (reanchor_epoch m))

(cl:ensure-generic-function 'retarget_required-val :lambda-list '(m))
(cl:defmethod retarget_required-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:retarget_required-val is deprecated.  Use teleop_msgs-msg:retarget_required instead.")
  (retarget_required m))

(cl:ensure-generic-function 'fault_code-val :lambda-list '(m))
(cl:defmethod fault_code-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:fault_code-val is deprecated.  Use teleop_msgs-msg:fault_code instead.")
  (fault_code m))

(cl:ensure-generic-function 'fault_detail-val :lambda-list '(m))
(cl:defmethod fault_detail-val ((m <TeleopSessionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:fault_detail-val is deprecated.  Use teleop_msgs-msg:fault_detail instead.")
  (fault_detail m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TeleopSessionState>)))
    "Constants for message type '<TeleopSessionState>"
  '((:SCHEMA_VERSION . 1)
    (:SESSION_INACTIVE . 0)
    (:SESSION_ACTIVE . 1)
    (:SESSION_HOMING . 2)
    (:SESSION_FAULT . 3)
    (:FAULT_NONE . 0)
    (:FAULT_INPUT_TIMEOUT . 1)
    (:FAULT_TARGET_JUMP . 2)
    (:FAULT_OUTPUT . 3)
    (:FAULT_INTERNAL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TeleopSessionState)))
    "Constants for message type 'TeleopSessionState"
  '((:SCHEMA_VERSION . 1)
    (:SESSION_INACTIVE . 0)
    (:SESSION_ACTIVE . 1)
    (:SESSION_HOMING . 2)
    (:SESSION_FAULT . 3)
    (:FAULT_NONE . 0)
    (:FAULT_INPUT_TIMEOUT . 1)
    (:FAULT_TARGET_JUMP . 2)
    (:FAULT_OUTPUT . 3)
    (:FAULT_INTERNAL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopSessionState>) ostream)
  "Serializes a message object of type '<TeleopSessionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'schema_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'schema_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_state)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'limbs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'limbs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reanchor_epoch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reanchor_epoch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reanchor_epoch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reanchor_epoch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'retarget_required) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fault_detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fault_detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopSessionState>) istream)
  "Deserializes a message object of type '<TeleopSessionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'schema_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'schema_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'session_state)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'limbs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'limbs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teleop_msgs-msg:TeleopLimbState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reanchor_epoch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reanchor_epoch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reanchor_epoch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reanchor_epoch)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'retarget_required) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fault_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fault_detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fault_detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopSessionState>)))
  "Returns string type for a message object of type '<TeleopSessionState>"
  "teleop_msgs/TeleopSessionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopSessionState)))
  "Returns string type for a message object of type 'TeleopSessionState"
  "teleop_msgs/TeleopSessionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopSessionState>)))
  "Returns md5sum for a message object of type '<TeleopSessionState>"
  "ebf383eb5a90bcbbd4b9b1366625b009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopSessionState)))
  "Returns md5sum for a message object of type 'TeleopSessionState"
  "ebf383eb5a90bcbbd4b9b1366625b009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopSessionState>)))
  "Returns full string definition for message of type '<TeleopSessionState>"
  (cl:format cl:nil "# 遥操作会话状态。由决策层单向广播，全系统唯一权威，其余模块只读。~%# 接收方不得维护本状态的副本，也不得自行修改跟随状态。~%~%std_msgs/Header header~%~%uint16 SCHEMA_VERSION=1~%uint16 schema_version~%~%uint8 SESSION_INACTIVE=0  # 未进入遥操作~%uint8 SESSION_ACTIVE=1    # 遥操作激活~%uint8 SESSION_HOMING=2    # 回初始姿态流程中，接收方应暂停输出目标~%uint8 SESSION_FAULT=3     # 故障~%uint8 session_state~%~%# 当前遥操作模式名，由产品定义。用字符串以便新增模式不改本消息。~%string mode~%~%# 逐肢体决策。肢体缺席时按不跟随处理。~%teleop_msgs/TeleopLimbState[] limbs~%~%# 重锚计数，单调递增。数值发生变化即要求接收方用当前输入与末端反馈~%# 重新建立锚点。用计数而非布尔边沿，因为收发双方不同频，边沿会丢。~%uint32 reanchor_epoch~%~%# 是否仍需要接收方计算全身重定向。纯性能提示，接收方可以忽略。~%bool retarget_required~%~%uint8 FAULT_NONE=0~%uint8 FAULT_INPUT_TIMEOUT=1  # 上游输入超时~%uint8 FAULT_TARGET_JUMP=2    # 目标跳变被拦截~%uint8 FAULT_OUTPUT=3         # 下发失败~%uint8 FAULT_INTERNAL=4       # 决策层内部错误~%uint8 fault_code~%~%# 故障详情，供日志与诊断使用，不参与控制判定~%string fault_detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: teleop_msgs/TeleopLimbState~%# 会话中单个肢体的决策状态。~%# 作为 TeleopSessionState.limbs 的元素使用。~%~%# 肢体名。与 TeleopTarget.name 取值一致。~%string name~%~%# 该肢体本周期是否处于跟随~%bool following~%~%# 该侧末端是否允许无极开合。~%# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。~%bool ee_closure_enabled~%~%# 该侧末端当前手势索引。~%# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。~%uint8 ee_gesture_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopSessionState)))
  "Returns full string definition for message of type 'TeleopSessionState"
  (cl:format cl:nil "# 遥操作会话状态。由决策层单向广播，全系统唯一权威，其余模块只读。~%# 接收方不得维护本状态的副本，也不得自行修改跟随状态。~%~%std_msgs/Header header~%~%uint16 SCHEMA_VERSION=1~%uint16 schema_version~%~%uint8 SESSION_INACTIVE=0  # 未进入遥操作~%uint8 SESSION_ACTIVE=1    # 遥操作激活~%uint8 SESSION_HOMING=2    # 回初始姿态流程中，接收方应暂停输出目标~%uint8 SESSION_FAULT=3     # 故障~%uint8 session_state~%~%# 当前遥操作模式名，由产品定义。用字符串以便新增模式不改本消息。~%string mode~%~%# 逐肢体决策。肢体缺席时按不跟随处理。~%teleop_msgs/TeleopLimbState[] limbs~%~%# 重锚计数，单调递增。数值发生变化即要求接收方用当前输入与末端反馈~%# 重新建立锚点。用计数而非布尔边沿，因为收发双方不同频，边沿会丢。~%uint32 reanchor_epoch~%~%# 是否仍需要接收方计算全身重定向。纯性能提示，接收方可以忽略。~%bool retarget_required~%~%uint8 FAULT_NONE=0~%uint8 FAULT_INPUT_TIMEOUT=1  # 上游输入超时~%uint8 FAULT_TARGET_JUMP=2    # 目标跳变被拦截~%uint8 FAULT_OUTPUT=3         # 下发失败~%uint8 FAULT_INTERNAL=4       # 决策层内部错误~%uint8 fault_code~%~%# 故障详情，供日志与诊断使用，不参与控制判定~%string fault_detail~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: teleop_msgs/TeleopLimbState~%# 会话中单个肢体的决策状态。~%# 作为 TeleopSessionState.limbs 的元素使用。~%~%# 肢体名。与 TeleopTarget.name 取值一致。~%string name~%~%# 该肢体本周期是否处于跟随~%bool following~%~%# 该侧末端是否允许无极开合。~%# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。~%bool ee_closure_enabled~%~%# 该侧末端当前手势索引。~%# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。~%uint8 ee_gesture_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopSessionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     1
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'limbs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
     1
     4 (cl:length (cl:slot-value msg 'fault_detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopSessionState>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopSessionState
    (cl:cons ':header (header msg))
    (cl:cons ':schema_version (schema_version msg))
    (cl:cons ':session_state (session_state msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':limbs (limbs msg))
    (cl:cons ':reanchor_epoch (reanchor_epoch msg))
    (cl:cons ':retarget_required (retarget_required msg))
    (cl:cons ':fault_code (fault_code msg))
    (cl:cons ':fault_detail (fault_detail msg))
))
