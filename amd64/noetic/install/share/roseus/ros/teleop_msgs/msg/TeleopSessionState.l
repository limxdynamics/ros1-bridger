;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopSessionState)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopSessionState (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE")
  (make-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude TeleopSessionState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SCHEMA_VERSION*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*SCHEMA_VERSION* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*SCHEMA_VERSION* 1)
(intern "*SESSION_INACTIVE*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*SESSION_INACTIVE* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*SESSION_INACTIVE* 0)
(intern "*SESSION_ACTIVE*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*SESSION_ACTIVE* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*SESSION_ACTIVE* 1)
(intern "*SESSION_HOMING*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*SESSION_HOMING* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*SESSION_HOMING* 2)
(intern "*SESSION_FAULT*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*SESSION_FAULT* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*SESSION_FAULT* 3)
(intern "*FAULT_NONE*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*FAULT_NONE* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*FAULT_NONE* 0)
(intern "*FAULT_INPUT_TIMEOUT*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*FAULT_INPUT_TIMEOUT* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*FAULT_INPUT_TIMEOUT* 1)
(intern "*FAULT_TARGET_JUMP*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*FAULT_TARGET_JUMP* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*FAULT_TARGET_JUMP* 2)
(intern "*FAULT_OUTPUT*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*FAULT_OUTPUT* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*FAULT_OUTPUT* 3)
(intern "*FAULT_INTERNAL*" (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(shadow '*FAULT_INTERNAL* (find-package "TELEOP_MSGS::TELEOPSESSIONSTATE"))
(defconstant teleop_msgs::TeleopSessionState::*FAULT_INTERNAL* 4)

(defun teleop_msgs::TeleopSessionState-to-symbol (const)
  (cond
        ((= const 1) 'teleop_msgs::TeleopSessionState::*SCHEMA_VERSION*)
        ((= const 0) 'teleop_msgs::TeleopSessionState::*SESSION_INACTIVE*)
        ((= const 1) 'teleop_msgs::TeleopSessionState::*SESSION_ACTIVE*)
        ((= const 2) 'teleop_msgs::TeleopSessionState::*SESSION_HOMING*)
        ((= const 3) 'teleop_msgs::TeleopSessionState::*SESSION_FAULT*)
        ((= const 0) 'teleop_msgs::TeleopSessionState::*FAULT_NONE*)
        ((= const 1) 'teleop_msgs::TeleopSessionState::*FAULT_INPUT_TIMEOUT*)
        ((= const 2) 'teleop_msgs::TeleopSessionState::*FAULT_TARGET_JUMP*)
        ((= const 3) 'teleop_msgs::TeleopSessionState::*FAULT_OUTPUT*)
        ((= const 4) 'teleop_msgs::TeleopSessionState::*FAULT_INTERNAL*)
        (t nil)))

(defclass teleop_msgs::TeleopSessionState
  :super ros::object
  :slots (_header _schema_version _session_state _mode _limbs _reanchor_epoch _retarget_required _fault_code _fault_detail ))

(defmethod teleop_msgs::TeleopSessionState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:schema_version __schema_version) 0)
    ((:session_state __session_state) 0)
    ((:mode __mode) "")
    ((:limbs __limbs) ())
    ((:reanchor_epoch __reanchor_epoch) 0)
    ((:retarget_required __retarget_required) nil)
    ((:fault_code __fault_code) 0)
    ((:fault_detail __fault_detail) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _schema_version (round __schema_version))
   (setq _session_state (round __session_state))
   (setq _mode (string __mode))
   (setq _limbs __limbs)
   (setq _reanchor_epoch (round __reanchor_epoch))
   (setq _retarget_required __retarget_required)
   (setq _fault_code (round __fault_code))
   (setq _fault_detail (string __fault_detail))
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
  (:session_state
   (&optional __session_state)
   (if __session_state (setq _session_state __session_state)) _session_state)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:limbs
   (&rest __limbs)
   (if (keywordp (car __limbs))
       (send* _limbs __limbs)
     (progn
       (if __limbs (setq _limbs (car __limbs)))
       _limbs)))
  (:reanchor_epoch
   (&optional __reanchor_epoch)
   (if __reanchor_epoch (setq _reanchor_epoch __reanchor_epoch)) _reanchor_epoch)
  (:retarget_required
   (&optional (__retarget_required :null))
   (if (not (eq __retarget_required :null)) (setq _retarget_required __retarget_required)) _retarget_required)
  (:fault_code
   (&optional __fault_code)
   (if __fault_code (setq _fault_code __fault_code)) _fault_code)
  (:fault_detail
   (&optional __fault_detail)
   (if __fault_detail (setq _fault_detail __fault_detail)) _fault_detail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _schema_version
    2
    ;; uint8 _session_state
    1
    ;; string _mode
    4 (length _mode)
    ;; teleop_msgs/TeleopLimbState[] _limbs
    (apply #'+ (send-all _limbs :serialization-length)) 4
    ;; uint32 _reanchor_epoch
    4
    ;; bool _retarget_required
    1
    ;; uint8 _fault_code
    1
    ;; string _fault_detail
    4 (length _fault_detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _schema_version
       (write-word _schema_version s)
     ;; uint8 _session_state
       (write-byte _session_state s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; teleop_msgs/TeleopLimbState[] _limbs
     (write-long (length _limbs) s)
     (dolist (elem _limbs)
       (send elem :serialize s)
       )
     ;; uint32 _reanchor_epoch
       (write-long _reanchor_epoch s)
     ;; bool _retarget_required
       (if _retarget_required (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _fault_code
       (write-byte _fault_code s)
     ;; string _fault_detail
       (write-long (length _fault_detail) s) (princ _fault_detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _schema_version
     (setq _schema_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _session_state
     (setq _session_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; teleop_msgs/TeleopLimbState[] _limbs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limbs (let (r) (dotimes (i n) (push (instance teleop_msgs::TeleopLimbState :init) r)) r))
     (dolist (elem- _limbs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _reanchor_epoch
     (setq _reanchor_epoch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _retarget_required
     (setq _retarget_required (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _fault_code
     (setq _fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _fault_detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fault_detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopSessionState :md5sum-) "ebf383eb5a90bcbbd4b9b1366625b009")
(setf (get teleop_msgs::TeleopSessionState :datatype-) "teleop_msgs/TeleopSessionState")
(setf (get teleop_msgs::TeleopSessionState :definition-)
      "# 遥操作会话状态。由决策层单向广播，全系统唯一权威，其余模块只读。
# 接收方不得维护本状态的副本，也不得自行修改跟随状态。

std_msgs/Header header

uint16 SCHEMA_VERSION=1
uint16 schema_version

uint8 SESSION_INACTIVE=0  # 未进入遥操作
uint8 SESSION_ACTIVE=1    # 遥操作激活
uint8 SESSION_HOMING=2    # 回初始姿态流程中，接收方应暂停输出目标
uint8 SESSION_FAULT=3     # 故障
uint8 session_state

# 当前遥操作模式名，由产品定义。用字符串以便新增模式不改本消息。
string mode

# 逐肢体决策。肢体缺席时按不跟随处理。
teleop_msgs/TeleopLimbState[] limbs

# 重锚计数，单调递增。数值发生变化即要求接收方用当前输入与末端反馈
# 重新建立锚点。用计数而非布尔边沿，因为收发双方不同频，边沿会丢。
uint32 reanchor_epoch

# 是否仍需要接收方计算全身重定向。纯性能提示，接收方可以忽略。
bool retarget_required

uint8 FAULT_NONE=0
uint8 FAULT_INPUT_TIMEOUT=1  # 上游输入超时
uint8 FAULT_TARGET_JUMP=2    # 目标跳变被拦截
uint8 FAULT_OUTPUT=3         # 下发失败
uint8 FAULT_INTERNAL=4       # 决策层内部错误
uint8 fault_code

# 故障详情，供日志与诊断使用，不参与控制判定
string fault_detail

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
MSG: teleop_msgs/TeleopLimbState
# 会话中单个肢体的决策状态。
# 作为 TeleopSessionState.limbs 的元素使用。

# 肢体名。与 TeleopTarget.name 取值一致。
string name

# 该肢体本周期是否处于跟随
bool following

# 该侧末端是否允许无极开合。
# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。
bool ee_closure_enabled

# 该侧末端当前手势索引。
# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。
uint8 ee_gesture_index

")



(provide :teleop_msgs/TeleopSessionState "ebf383eb5a90bcbbd4b9b1366625b009")


