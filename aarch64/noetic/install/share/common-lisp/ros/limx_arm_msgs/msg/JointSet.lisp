; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-msg)


;//! \htmlinclude JointSet.msg.html

(cl:defclass <JointSet> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:integer
    :initform 0)
   (deviceid
    :reader deviceid
    :initarg :deviceid
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointSet (<JointSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-msg:<JointSet> is deprecated: use limx_arm_msgs-msg:JointSet instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <JointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:stamp-val is deprecated.  Use limx_arm_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'deviceid-val :lambda-list '(m))
(cl:defmethod deviceid-val ((m <JointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:deviceid-val is deprecated.  Use limx_arm_msgs-msg:deviceid instead.")
  (deviceid m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <JointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:action-val is deprecated.  Use limx_arm_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:mode-val is deprecated.  Use limx_arm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <JointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:data-val is deprecated.  Use limx_arm_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JointSet>)))
    "Constants for message type '<JointSet>"
  '((:ACTION_IDLE . 0)
    (:ACTION_START . 1)
    (:ACTION_PAUSE . 2)
    (:ACTION_RESUME . 3)
    (:ACTION_STOP . 4)
    (:ACTION_ENABLE_MOTOR . 5)
    (:ACTION_SET_ZERO . 6)
    (:ACTION_SET_LIMIT_MIN . 7)
    (:ACTION_SET_LIMIT_MAX . 8)
    (:ACTION_SET_POSITION . 9)
    (:ACTION_SET_MODE . 10)
    (:ACTION_SET_TOOL_SIZE . 11)
    (:ACTION_START_DRAG . 12)
    (:ACTION_STOP_DRAG . 13)
    (:ACTION_PLAYER_START . 14)
    (:ACTION_PLAYER_STOP . 15)
    (:ACTION_SET_CARTESIAN_POSITION . 16)
    (:MODE_ANGLE . 1)
    (:MODE_VELOCITY . 3)
    (:MODE_CURRENT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JointSet)))
    "Constants for message type 'JointSet"
  '((:ACTION_IDLE . 0)
    (:ACTION_START . 1)
    (:ACTION_PAUSE . 2)
    (:ACTION_RESUME . 3)
    (:ACTION_STOP . 4)
    (:ACTION_ENABLE_MOTOR . 5)
    (:ACTION_SET_ZERO . 6)
    (:ACTION_SET_LIMIT_MIN . 7)
    (:ACTION_SET_LIMIT_MAX . 8)
    (:ACTION_SET_POSITION . 9)
    (:ACTION_SET_MODE . 10)
    (:ACTION_SET_TOOL_SIZE . 11)
    (:ACTION_START_DRAG . 12)
    (:ACTION_STOP_DRAG . 13)
    (:ACTION_PLAYER_START . 14)
    (:ACTION_PLAYER_STOP . 15)
    (:ACTION_SET_CARTESIAN_POSITION . 16)
    (:MODE_ANGLE . 1)
    (:MODE_VELOCITY . 3)
    (:MODE_CURRENT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSet>) ostream)
  "Serializes a message object of type '<JointSet>"
  (cl:let* ((signed (cl:slot-value msg 'stamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'deviceid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'deviceid))
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSet>) istream)
  "Deserializes a message object of type '<JointSet>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'deviceid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSet>)))
  "Returns string type for a message object of type '<JointSet>"
  "limx_arm_msgs/JointSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSet)))
  "Returns string type for a message object of type 'JointSet"
  "limx_arm_msgs/JointSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSet>)))
  "Returns md5sum for a message object of type '<JointSet>"
  "342a69737258a9dd1a3f1a350ffdea87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSet)))
  "Returns md5sum for a message object of type 'JointSet"
  "342a69737258a9dd1a3f1a350ffdea87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSet>)))
  "Returns full string definition for message of type '<JointSet>"
  (cl:format cl:nil "int64 stamp~%~%string deviceid~%~%# action~%int32 ACTION_IDLE           = 0~%int32 ACTION_START          = 1~%int32 ACTION_PAUSE          = 2~%int32 ACTION_RESUME         = 3~%int32 ACTION_STOP           = 4~%int32 ACTION_ENABLE_MOTOR   = 5~%int32 ACTION_SET_ZERO       = 6~%int32 ACTION_SET_LIMIT_MIN  = 7~%int32 ACTION_SET_LIMIT_MAX  = 8~%int32 ACTION_SET_POSITION   = 9~%int32 ACTION_SET_MODE       = 10~%int32 ACTION_SET_TOOL_SIZE  = 11~%int32 ACTION_START_DRAG     = 12~%int32 ACTION_STOP_DRAG      = 13~%int32 ACTION_PLAYER_START   = 14~%int32 ACTION_PLAYER_STOP    = 15~%int32 ACTION_SET_CARTESIAN_POSITION = 16~%int32 action~%~%# 01位置控制，03速度模式，04电流模式 ~%int32 MODE_ANGLE    = 1~%int32 MODE_VELOCITY = 3~%int32 MODE_CURRENT  = 4~%int32 mode~%~%# data~%float32[6] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSet)))
  "Returns full string definition for message of type 'JointSet"
  (cl:format cl:nil "int64 stamp~%~%string deviceid~%~%# action~%int32 ACTION_IDLE           = 0~%int32 ACTION_START          = 1~%int32 ACTION_PAUSE          = 2~%int32 ACTION_RESUME         = 3~%int32 ACTION_STOP           = 4~%int32 ACTION_ENABLE_MOTOR   = 5~%int32 ACTION_SET_ZERO       = 6~%int32 ACTION_SET_LIMIT_MIN  = 7~%int32 ACTION_SET_LIMIT_MAX  = 8~%int32 ACTION_SET_POSITION   = 9~%int32 ACTION_SET_MODE       = 10~%int32 ACTION_SET_TOOL_SIZE  = 11~%int32 ACTION_START_DRAG     = 12~%int32 ACTION_STOP_DRAG      = 13~%int32 ACTION_PLAYER_START   = 14~%int32 ACTION_PLAYER_STOP    = 15~%int32 ACTION_SET_CARTESIAN_POSITION = 16~%int32 action~%~%# 01位置控制，03速度模式，04电流模式 ~%int32 MODE_ANGLE    = 1~%int32 MODE_VELOCITY = 3~%int32 MODE_CURRENT  = 4~%int32 mode~%~%# data~%float32[6] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSet>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'deviceid))
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSet>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSet
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':deviceid (deviceid msg))
    (cl:cons ':action (action msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':data (data msg))
))
