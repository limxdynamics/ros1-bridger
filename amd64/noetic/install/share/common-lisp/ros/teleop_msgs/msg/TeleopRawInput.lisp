; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopRawInput.msg.html

(cl:defclass <TeleopRawInput> (roslisp-msg-protocol:ros-message)
  ((left_trigger
    :reader left_trigger
    :initarg :left_trigger
    :type cl:float
    :initform 0.0)
   (right_trigger
    :reader right_trigger
    :initarg :right_trigger
    :type cl:float
    :initform 0.0)
   (left_grip
    :reader left_grip
    :initarg :left_grip
    :type cl:float
    :initform 0.0)
   (right_grip
    :reader right_grip
    :initarg :right_grip
    :type cl:float
    :initform 0.0)
   (left_stick
    :reader left_stick
    :initarg :left_stick
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (right_stick
    :reader right_stick
    :initarg :right_stick
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (buttons
    :reader buttons
    :initarg :buttons
    :type cl:integer
    :initform 0)
   (buttons_valid
    :reader buttons_valid
    :initarg :buttons_valid
    :type cl:integer
    :initform 0))
)

(cl:defclass TeleopRawInput (<TeleopRawInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopRawInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopRawInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopRawInput> is deprecated: use teleop_msgs-msg:TeleopRawInput instead.")))

(cl:ensure-generic-function 'left_trigger-val :lambda-list '(m))
(cl:defmethod left_trigger-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:left_trigger-val is deprecated.  Use teleop_msgs-msg:left_trigger instead.")
  (left_trigger m))

(cl:ensure-generic-function 'right_trigger-val :lambda-list '(m))
(cl:defmethod right_trigger-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:right_trigger-val is deprecated.  Use teleop_msgs-msg:right_trigger instead.")
  (right_trigger m))

(cl:ensure-generic-function 'left_grip-val :lambda-list '(m))
(cl:defmethod left_grip-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:left_grip-val is deprecated.  Use teleop_msgs-msg:left_grip instead.")
  (left_grip m))

(cl:ensure-generic-function 'right_grip-val :lambda-list '(m))
(cl:defmethod right_grip-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:right_grip-val is deprecated.  Use teleop_msgs-msg:right_grip instead.")
  (right_grip m))

(cl:ensure-generic-function 'left_stick-val :lambda-list '(m))
(cl:defmethod left_stick-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:left_stick-val is deprecated.  Use teleop_msgs-msg:left_stick instead.")
  (left_stick m))

(cl:ensure-generic-function 'right_stick-val :lambda-list '(m))
(cl:defmethod right_stick-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:right_stick-val is deprecated.  Use teleop_msgs-msg:right_stick instead.")
  (right_stick m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:buttons-val is deprecated.  Use teleop_msgs-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'buttons_valid-val :lambda-list '(m))
(cl:defmethod buttons_valid-val ((m <TeleopRawInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:buttons_valid-val is deprecated.  Use teleop_msgs-msg:buttons_valid instead.")
  (buttons_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TeleopRawInput>)))
    "Constants for message type '<TeleopRawInput>"
  '((:BTN_LEFT_X . 1)
    (:BTN_LEFT_Y . 2)
    (:BTN_RIGHT_A . 4)
    (:BTN_RIGHT_B . 8)
    (:BTN_LEFT_STICK . 16)
    (:BTN_RIGHT_STICK . 32)
    (:BTN_LEFT_GRIP . 64)
    (:BTN_RIGHT_GRIP . 128)
    (:BTN_LEFT_TRIGGER . 256)
    (:BTN_RIGHT_TRIGGER . 512)
    (:BTN_LEFT_THUMBREST . 1024)
    (:BTN_RIGHT_THUMBREST . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TeleopRawInput)))
    "Constants for message type 'TeleopRawInput"
  '((:BTN_LEFT_X . 1)
    (:BTN_LEFT_Y . 2)
    (:BTN_RIGHT_A . 4)
    (:BTN_RIGHT_B . 8)
    (:BTN_LEFT_STICK . 16)
    (:BTN_RIGHT_STICK . 32)
    (:BTN_LEFT_GRIP . 64)
    (:BTN_RIGHT_GRIP . 128)
    (:BTN_LEFT_TRIGGER . 256)
    (:BTN_RIGHT_TRIGGER . 512)
    (:BTN_LEFT_THUMBREST . 1024)
    (:BTN_RIGHT_THUMBREST . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopRawInput>) ostream)
  "Serializes a message object of type '<TeleopRawInput>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_trigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_trigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_grip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_grip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_stick))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_stick))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buttons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'buttons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'buttons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buttons_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'buttons_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'buttons_valid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopRawInput>) istream)
  "Deserializes a message object of type '<TeleopRawInput>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_trigger) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_trigger) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_grip) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_grip) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'left_stick) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'left_stick)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_stick) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'right_stick)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'buttons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'buttons_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'buttons_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'buttons_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'buttons_valid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopRawInput>)))
  "Returns string type for a message object of type '<TeleopRawInput>"
  "teleop_msgs/TeleopRawInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopRawInput)))
  "Returns string type for a message object of type 'TeleopRawInput"
  "teleop_msgs/TeleopRawInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopRawInput>)))
  "Returns md5sum for a message object of type '<TeleopRawInput>"
  "681b645c832574afd3efcab58e686b87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopRawInput)))
  "Returns md5sum for a message object of type 'TeleopRawInput"
  "681b645c832574afd3efcab58e686b87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopRawInput>)))
  "Returns full string definition for message of type '<TeleopRawInput>"
  (cl:format cl:nil "# 操作者控制器的原始输入量。~%# 发送方不解释任何按键含义，组合键语义一律由接收方解释。~%~%# 模拟量，范围 0.0 ~~ 1.0~%float32 left_trigger~%float32 right_trigger~%float32 left_grip~%float32 right_grip~%~%# 摇杆，[x, y]，范围 -1.0 ~~ 1.0~%float32[2] left_stick~%float32[2] right_stick~%~%# 按键位掩码。预留高位，新增按键不需要改本消息。~%uint32 BTN_LEFT_X=1~%uint32 BTN_LEFT_Y=2~%uint32 BTN_RIGHT_A=4~%uint32 BTN_RIGHT_B=8~%uint32 BTN_LEFT_STICK=16         # 左摇杆按下~%uint32 BTN_RIGHT_STICK=32        # 右摇杆按下~%uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态~%uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态~%uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态~%uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态~%uint32 BTN_LEFT_THUMBREST=1024~%uint32 BTN_RIGHT_THUMBREST=2048~%uint32 buttons~%~%# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。~%# 接收方不得把「设备未提供」当成「按键未按下」。~%uint32 buttons_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopRawInput)))
  "Returns full string definition for message of type 'TeleopRawInput"
  (cl:format cl:nil "# 操作者控制器的原始输入量。~%# 发送方不解释任何按键含义，组合键语义一律由接收方解释。~%~%# 模拟量，范围 0.0 ~~ 1.0~%float32 left_trigger~%float32 right_trigger~%float32 left_grip~%float32 right_grip~%~%# 摇杆，[x, y]，范围 -1.0 ~~ 1.0~%float32[2] left_stick~%float32[2] right_stick~%~%# 按键位掩码。预留高位，新增按键不需要改本消息。~%uint32 BTN_LEFT_X=1~%uint32 BTN_LEFT_Y=2~%uint32 BTN_RIGHT_A=4~%uint32 BTN_RIGHT_B=8~%uint32 BTN_LEFT_STICK=16         # 左摇杆按下~%uint32 BTN_RIGHT_STICK=32        # 右摇杆按下~%uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态~%uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态~%uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态~%uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态~%uint32 BTN_LEFT_THUMBREST=1024~%uint32 BTN_RIGHT_THUMBREST=2048~%uint32 buttons~%~%# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。~%# 接收方不得把「设备未提供」当成「按键未按下」。~%uint32 buttons_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopRawInput>))
  (cl:+ 0
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_stick) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_stick) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopRawInput>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopRawInput
    (cl:cons ':left_trigger (left_trigger msg))
    (cl:cons ':right_trigger (right_trigger msg))
    (cl:cons ':left_grip (left_grip msg))
    (cl:cons ':right_grip (right_grip msg))
    (cl:cons ':left_stick (left_stick msg))
    (cl:cons ':right_stick (right_stick msg))
    (cl:cons ':buttons (buttons msg))
    (cl:cons ':buttons_valid (buttons_valid msg))
))
