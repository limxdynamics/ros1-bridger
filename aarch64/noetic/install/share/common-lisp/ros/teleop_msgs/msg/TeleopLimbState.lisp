; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopLimbState.msg.html

(cl:defclass <TeleopLimbState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (following
    :reader following
    :initarg :following
    :type cl:boolean
    :initform cl:nil)
   (ee_closure_enabled
    :reader ee_closure_enabled
    :initarg :ee_closure_enabled
    :type cl:boolean
    :initform cl:nil)
   (ee_gesture_index
    :reader ee_gesture_index
    :initarg :ee_gesture_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TeleopLimbState (<TeleopLimbState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopLimbState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopLimbState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopLimbState> is deprecated: use teleop_msgs-msg:TeleopLimbState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <TeleopLimbState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:name-val is deprecated.  Use teleop_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'following-val :lambda-list '(m))
(cl:defmethod following-val ((m <TeleopLimbState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:following-val is deprecated.  Use teleop_msgs-msg:following instead.")
  (following m))

(cl:ensure-generic-function 'ee_closure_enabled-val :lambda-list '(m))
(cl:defmethod ee_closure_enabled-val ((m <TeleopLimbState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:ee_closure_enabled-val is deprecated.  Use teleop_msgs-msg:ee_closure_enabled instead.")
  (ee_closure_enabled m))

(cl:ensure-generic-function 'ee_gesture_index-val :lambda-list '(m))
(cl:defmethod ee_gesture_index-val ((m <TeleopLimbState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:ee_gesture_index-val is deprecated.  Use teleop_msgs-msg:ee_gesture_index instead.")
  (ee_gesture_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopLimbState>) ostream)
  "Serializes a message object of type '<TeleopLimbState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'following) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ee_closure_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ee_gesture_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopLimbState>) istream)
  "Deserializes a message object of type '<TeleopLimbState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'following) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ee_closure_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ee_gesture_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopLimbState>)))
  "Returns string type for a message object of type '<TeleopLimbState>"
  "teleop_msgs/TeleopLimbState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopLimbState)))
  "Returns string type for a message object of type 'TeleopLimbState"
  "teleop_msgs/TeleopLimbState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopLimbState>)))
  "Returns md5sum for a message object of type '<TeleopLimbState>"
  "aa4590909bb809d1cfda598a4b6604be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopLimbState)))
  "Returns md5sum for a message object of type 'TeleopLimbState"
  "aa4590909bb809d1cfda598a4b6604be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopLimbState>)))
  "Returns full string definition for message of type '<TeleopLimbState>"
  (cl:format cl:nil "# 会话中单个肢体的决策状态。~%# 作为 TeleopSessionState.limbs 的元素使用。~%~%# 肢体名。与 TeleopTarget.name 取值一致。~%string name~%~%# 该肢体本周期是否处于跟随~%bool following~%~%# 该侧末端是否允许无极开合。~%# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。~%bool ee_closure_enabled~%~%# 该侧末端当前手势索引。~%# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。~%uint8 ee_gesture_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopLimbState)))
  "Returns full string definition for message of type 'TeleopLimbState"
  (cl:format cl:nil "# 会话中单个肢体的决策状态。~%# 作为 TeleopSessionState.limbs 的元素使用。~%~%# 肢体名。与 TeleopTarget.name 取值一致。~%string name~%~%# 该肢体本周期是否处于跟随~%bool following~%~%# 该侧末端是否允许无极开合。~%# 门控由发布方负责，扳机行程到开合程度的映射由接收方负责。~%bool ee_closure_enabled~%~%# 该侧末端当前手势索引。~%# 循环切换与持久化由发布方负责，下发对应手势由接收方负责。~%uint8 ee_gesture_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopLimbState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopLimbState>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopLimbState
    (cl:cons ':name (name msg))
    (cl:cons ':following (following msg))
    (cl:cons ':ee_closure_enabled (ee_closure_enabled msg))
    (cl:cons ':ee_gesture_index (ee_gesture_index msg))
))
