; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude VRState.msg.html

(cl:defclass <VRState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (eyePose
    :reader eyePose
    :initarg :eyePose
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (l
    :reader l
    :initarg :l
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (r
    :reader r
    :initarg :r
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (leftJS
    :reader leftJS
    :initarg :leftJS
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (leftTrig
    :reader leftTrig
    :initarg :leftTrig
    :type cl:float
    :initform 0.0)
   (leftGrip
    :reader leftGrip
    :initarg :leftGrip
    :type cl:float
    :initform 0.0)
   (LThU
    :reader LThU
    :initarg :LThU
    :type cl:boolean
    :initform cl:nil)
   (LTr
    :reader LTr
    :initarg :LTr
    :type cl:boolean
    :initform cl:nil)
   (LG
    :reader LG
    :initarg :LG
    :type cl:boolean
    :initform cl:nil)
   (X
    :reader X
    :initarg :X
    :type cl:boolean
    :initform cl:nil)
   (Y
    :reader Y
    :initarg :Y
    :type cl:boolean
    :initform cl:nil)
   (rightJS
    :reader rightJS
    :initarg :rightJS
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (rightTrig
    :reader rightTrig
    :initarg :rightTrig
    :type cl:float
    :initform 0.0)
   (rightGrip
    :reader rightGrip
    :initarg :rightGrip
    :type cl:float
    :initform 0.0)
   (RThU
    :reader RThU
    :initarg :RThU
    :type cl:boolean
    :initform cl:nil)
   (RTr
    :reader RTr
    :initarg :RTr
    :type cl:boolean
    :initform cl:nil)
   (RG
    :reader RG
    :initarg :RG
    :type cl:boolean
    :initform cl:nil)
   (A
    :reader A
    :initarg :A
    :type cl:boolean
    :initform cl:nil)
   (B
    :reader B
    :initarg :B
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VRState (<VRState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<VRState> is deprecated: use teleop_msgs-msg:VRState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:header-val is deprecated.  Use teleop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'eyePose-val :lambda-list '(m))
(cl:defmethod eyePose-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:eyePose-val is deprecated.  Use teleop_msgs-msg:eyePose instead.")
  (eyePose m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:l-val is deprecated.  Use teleop_msgs-msg:l instead.")
  (l m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:r-val is deprecated.  Use teleop_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'leftJS-val :lambda-list '(m))
(cl:defmethod leftJS-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:leftJS-val is deprecated.  Use teleop_msgs-msg:leftJS instead.")
  (leftJS m))

(cl:ensure-generic-function 'leftTrig-val :lambda-list '(m))
(cl:defmethod leftTrig-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:leftTrig-val is deprecated.  Use teleop_msgs-msg:leftTrig instead.")
  (leftTrig m))

(cl:ensure-generic-function 'leftGrip-val :lambda-list '(m))
(cl:defmethod leftGrip-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:leftGrip-val is deprecated.  Use teleop_msgs-msg:leftGrip instead.")
  (leftGrip m))

(cl:ensure-generic-function 'LThU-val :lambda-list '(m))
(cl:defmethod LThU-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:LThU-val is deprecated.  Use teleop_msgs-msg:LThU instead.")
  (LThU m))

(cl:ensure-generic-function 'LTr-val :lambda-list '(m))
(cl:defmethod LTr-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:LTr-val is deprecated.  Use teleop_msgs-msg:LTr instead.")
  (LTr m))

(cl:ensure-generic-function 'LG-val :lambda-list '(m))
(cl:defmethod LG-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:LG-val is deprecated.  Use teleop_msgs-msg:LG instead.")
  (LG m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:X-val is deprecated.  Use teleop_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:Y-val is deprecated.  Use teleop_msgs-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'rightJS-val :lambda-list '(m))
(cl:defmethod rightJS-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:rightJS-val is deprecated.  Use teleop_msgs-msg:rightJS instead.")
  (rightJS m))

(cl:ensure-generic-function 'rightTrig-val :lambda-list '(m))
(cl:defmethod rightTrig-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:rightTrig-val is deprecated.  Use teleop_msgs-msg:rightTrig instead.")
  (rightTrig m))

(cl:ensure-generic-function 'rightGrip-val :lambda-list '(m))
(cl:defmethod rightGrip-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:rightGrip-val is deprecated.  Use teleop_msgs-msg:rightGrip instead.")
  (rightGrip m))

(cl:ensure-generic-function 'RThU-val :lambda-list '(m))
(cl:defmethod RThU-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:RThU-val is deprecated.  Use teleop_msgs-msg:RThU instead.")
  (RThU m))

(cl:ensure-generic-function 'RTr-val :lambda-list '(m))
(cl:defmethod RTr-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:RTr-val is deprecated.  Use teleop_msgs-msg:RTr instead.")
  (RTr m))

(cl:ensure-generic-function 'RG-val :lambda-list '(m))
(cl:defmethod RG-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:RG-val is deprecated.  Use teleop_msgs-msg:RG instead.")
  (RG m))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:A-val is deprecated.  Use teleop_msgs-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <VRState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:B-val is deprecated.  Use teleop_msgs-msg:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRState>) ostream)
  "Serializes a message object of type '<VRState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'eyePose))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'l))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'leftJS))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftTrig))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftGrip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LThU) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LTr) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LG) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'X) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Y) 1 0)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rightJS))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightTrig))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightGrip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RThU) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RTr) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RG) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'A) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'B) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRState>) istream)
  "Deserializes a message object of type '<VRState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'eyePose) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'eyePose)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'l) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'l)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'r) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'r)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'leftJS) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'leftJS)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftTrig) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftGrip) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'LThU) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LTr) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LG) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'X) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Y) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'rightJS) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'rightJS)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightTrig) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightGrip) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'RThU) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RTr) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RG) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'A) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'B) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRState>)))
  "Returns string type for a message object of type '<VRState>"
  "teleop_msgs/VRState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRState)))
  "Returns string type for a message object of type 'VRState"
  "teleop_msgs/VRState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRState>)))
  "Returns md5sum for a message object of type '<VRState>"
  "00c31bc920504fb5ee84c550ff4ee100")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRState)))
  "Returns md5sum for a message object of type 'VRState"
  "00c31bc920504fb5ee84c550ff4ee100")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRState>)))
  "Returns full string definition for message of type '<VRState>"
  (cl:format cl:nil "std_msgs/Header header~%float32[16] eyePose  # 眼镜位置姿态矩阵 4x4~%float32[16] l   # 左手柄姿态矩阵 4x4~%float32[16] r   # 右手柄姿态矩阵 4x4~%~%float32[2] leftJS # 左摇杆~%float32 leftTrig  # 左扳机~%float32 leftGrip  # 左 Grip 键~%bool LThU  # 左拇指（布尔值）~%bool LTr   # 左扳机（布尔值）~%bool LG    # 左 Grip 键（布尔值）~%bool X     # X 键~%bool Y     # Y 键~%~%float32[2] rightJS  # 右摇杆~%float32 rightTrig   # 右扳机~%float32 rightGrip   # 右 Grip 键~%bool RThU  # 右拇指（布尔值）~%bool RTr   # 右扳机（布尔值）~%bool RG    # 右 Grip 键（布尔值）~%bool A     # A 键~%bool B     # B 键~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRState)))
  "Returns full string definition for message of type 'VRState"
  (cl:format cl:nil "std_msgs/Header header~%float32[16] eyePose  # 眼镜位置姿态矩阵 4x4~%float32[16] l   # 左手柄姿态矩阵 4x4~%float32[16] r   # 右手柄姿态矩阵 4x4~%~%float32[2] leftJS # 左摇杆~%float32 leftTrig  # 左扳机~%float32 leftGrip  # 左 Grip 键~%bool LThU  # 左拇指（布尔值）~%bool LTr   # 左扳机（布尔值）~%bool LG    # 左 Grip 键（布尔值）~%bool X     # X 键~%bool Y     # Y 键~%~%float32[2] rightJS  # 右摇杆~%float32 rightTrig   # 右扳机~%float32 rightGrip   # 右 Grip 键~%bool RThU  # 右拇指（布尔值）~%bool RTr   # 右扳机（布尔值）~%bool RG    # 右 Grip 键（布尔值）~%bool A     # A 键~%bool B     # B 键~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'eyePose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'l) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leftJS) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rightJS) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRState>))
  "Converts a ROS message object to a list"
  (cl:list 'VRState
    (cl:cons ':header (header msg))
    (cl:cons ':eyePose (eyePose msg))
    (cl:cons ':l (l msg))
    (cl:cons ':r (r msg))
    (cl:cons ':leftJS (leftJS msg))
    (cl:cons ':leftTrig (leftTrig msg))
    (cl:cons ':leftGrip (leftGrip msg))
    (cl:cons ':LThU (LThU msg))
    (cl:cons ':LTr (LTr msg))
    (cl:cons ':LG (LG msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':rightJS (rightJS msg))
    (cl:cons ':rightTrig (rightTrig msg))
    (cl:cons ':rightGrip (rightGrip msg))
    (cl:cons ':RThU (RThU msg))
    (cl:cons ':RTr (RTr msg))
    (cl:cons ':RG (RG msg))
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
))
