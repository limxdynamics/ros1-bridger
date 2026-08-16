; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopTarget.msg.html

(cl:defclass <TeleopTarget> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (validity
    :reader validity
    :initarg :validity
    :type cl:fixnum
    :initform 0)
   (source_stamp
    :reader source_stamp
    :initarg :source_stamp
    :type cl:real
    :initform 0))
)

(cl:defclass TeleopTarget (<TeleopTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopTarget> is deprecated: use teleop_msgs-msg:TeleopTarget instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TeleopTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:name-val is deprecated.  Use teleop_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TeleopTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:pose-val is deprecated.  Use teleop_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'validity-val :lambda-list '(m))
(cl:defmethod validity-val ((m <TeleopTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:validity-val is deprecated.  Use teleop_msgs-msg:validity instead.")
  (validity m))

(cl:ensure-generic-function 'source_stamp-val :lambda-list '(m))
(cl:defmethod source_stamp-val ((m <TeleopTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:source_stamp-val is deprecated.  Use teleop_msgs-msg:source_stamp instead.")
  (source_stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TeleopTarget>)))
    "Constants for message type '<TeleopTarget>"
  '((:VALIDITY_INVALID . 0)
    (:VALIDITY_VALID . 1)
    (:VALIDITY_STALE . 2)
    (:VALIDITY_EXTRAPOLATED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TeleopTarget)))
    "Constants for message type 'TeleopTarget"
  '((:VALIDITY_INVALID . 0)
    (:VALIDITY_VALID . 1)
    (:VALIDITY_STALE . 2)
    (:VALIDITY_EXTRAPOLATED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopTarget>) ostream)
  "Serializes a message object of type '<TeleopTarget>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validity)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'source_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'source_stamp) (cl:floor (cl:slot-value msg 'source_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopTarget>) istream)
  "Deserializes a message object of type '<TeleopTarget>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'validity)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopTarget>)))
  "Returns string type for a message object of type '<TeleopTarget>"
  "teleop_msgs/TeleopTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopTarget)))
  "Returns string type for a message object of type 'TeleopTarget"
  "teleop_msgs/TeleopTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopTarget>)))
  "Returns md5sum for a message object of type '<TeleopTarget>"
  "07cc223d3f4368b67d350d5620e9bced")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopTarget)))
  "Returns md5sum for a message object of type 'TeleopTarget"
  "07cc223d3f4368b67d350d5620e9bced")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopTarget>)))
  "Returns full string definition for message of type '<TeleopTarget>"
  (cl:format cl:nil "# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。~%# 作为 TeleopIntentFrame.targets 的元素使用。~%~%# 目标名。约定值：left_hand / right_hand / head / torso / base /~%# left_foot / right_foot / left_wrist / right_wrist。~%# 新增跟踪目标只需约定新名字，不需要改本消息。~%string name~%~%# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。~%geometry_msgs/Pose pose~%~%# 数据可信度。接收方据此决定跟随、降级还是忽略。~%uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略~%uint8 VALIDITY_VALID=1         # 新鲜可用~%uint8 VALIDITY_STALE=2         # 有数据但已超期~%uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测~%uint8 validity~%~%# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，~%# 接收方据此判断单个目标的新鲜度。~%time source_stamp~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopTarget)))
  "Returns full string definition for message of type 'TeleopTarget"
  (cl:format cl:nil "# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。~%# 作为 TeleopIntentFrame.targets 的元素使用。~%~%# 目标名。约定值：left_hand / right_hand / head / torso / base /~%# left_foot / right_foot / left_wrist / right_wrist。~%# 新增跟踪目标只需约定新名字，不需要改本消息。~%string name~%~%# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。~%geometry_msgs/Pose pose~%~%# 数据可信度。接收方据此决定跟随、降级还是忽略。~%uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略~%uint8 VALIDITY_VALID=1         # 新鲜可用~%uint8 VALIDITY_STALE=2         # 有数据但已超期~%uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测~%uint8 validity~%~%# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，~%# 接收方据此判断单个目标的新鲜度。~%time source_stamp~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopTarget>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopTarget
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':validity (validity msg))
    (cl:cons ':source_stamp (source_stamp msg))
))
