; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-msg)


;//! \htmlinclude JointStatus.msg.html

(cl:defclass <JointStatus> (roslisp-msg-protocol:ros-message)
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
   (run_time
    :reader run_time
    :initarg :run_time
    :type cl:integer
    :initform 0)
   (enable
    :reader enable
    :initarg :enable
    :type (cl:vector cl:integer)
   :initform (cl:make-array 6 :element-type 'cl:integer :initial-element 0))
   (error
    :reader error
    :initarg :error
    :type (cl:vector cl:string)
   :initform (cl:make-array 6 :element-type 'cl:string :initial-element ""))
   (zero
    :reader zero
    :initarg :zero
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (limit_min
    :reader limit_min
    :initarg :limit_min
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (limit_max
    :reader limit_max
    :initarg :limit_max
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (tool_size
    :reader tool_size
    :initarg :tool_size
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (play_state
    :reader play_state
    :initarg :play_state
    :type cl:integer
    :initform 0)
   (log_path
    :reader log_path
    :initarg :log_path
    :type cl:string
    :initform ""))
)

(cl:defclass JointStatus (<JointStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-msg:<JointStatus> is deprecated: use limx_arm_msgs-msg:JointStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:stamp-val is deprecated.  Use limx_arm_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'deviceid-val :lambda-list '(m))
(cl:defmethod deviceid-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:deviceid-val is deprecated.  Use limx_arm_msgs-msg:deviceid instead.")
  (deviceid m))

(cl:ensure-generic-function 'run_time-val :lambda-list '(m))
(cl:defmethod run_time-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:run_time-val is deprecated.  Use limx_arm_msgs-msg:run_time instead.")
  (run_time m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:enable-val is deprecated.  Use limx_arm_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:error-val is deprecated.  Use limx_arm_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'zero-val :lambda-list '(m))
(cl:defmethod zero-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:zero-val is deprecated.  Use limx_arm_msgs-msg:zero instead.")
  (zero m))

(cl:ensure-generic-function 'limit_min-val :lambda-list '(m))
(cl:defmethod limit_min-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:limit_min-val is deprecated.  Use limx_arm_msgs-msg:limit_min instead.")
  (limit_min m))

(cl:ensure-generic-function 'limit_max-val :lambda-list '(m))
(cl:defmethod limit_max-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:limit_max-val is deprecated.  Use limx_arm_msgs-msg:limit_max instead.")
  (limit_max m))

(cl:ensure-generic-function 'tool_size-val :lambda-list '(m))
(cl:defmethod tool_size-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:tool_size-val is deprecated.  Use limx_arm_msgs-msg:tool_size instead.")
  (tool_size m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:mode-val is deprecated.  Use limx_arm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:state-val is deprecated.  Use limx_arm_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'play_state-val :lambda-list '(m))
(cl:defmethod play_state-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:play_state-val is deprecated.  Use limx_arm_msgs-msg:play_state instead.")
  (play_state m))

(cl:ensure-generic-function 'log_path-val :lambda-list '(m))
(cl:defmethod log_path-val ((m <JointStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:log_path-val is deprecated.  Use limx_arm_msgs-msg:log_path instead.")
  (log_path m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JointStatus>)))
    "Constants for message type '<JointStatus>"
  '((:MODE_ANGLE . 1)
    (:MODE_VELOCITY . 3)
    (:MODE_CURRENT . 4)
    (:STATE_IDLE . 1)
    (:STATE_STARTED . 2)
    (:STATE_PAUSED . 3)
    (:STATE_RESUMED . 4)
    (:STATE_STOPED . 5)
    (:STATE_SHUTDOWN . 6)
    (:PLAY_STATE_IDLE . 0)
    (:PLAY_STATE_STARTED . 1)
    (:PLAY_STATE_FAILED . 2)
    (:PLAY_STATE_FINISHED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JointStatus)))
    "Constants for message type 'JointStatus"
  '((:MODE_ANGLE . 1)
    (:MODE_VELOCITY . 3)
    (:MODE_CURRENT . 4)
    (:STATE_IDLE . 1)
    (:STATE_STARTED . 2)
    (:STATE_PAUSED . 3)
    (:STATE_RESUMED . 4)
    (:STATE_STOPED . 5)
    (:STATE_SHUTDOWN . 6)
    (:PLAY_STATE_IDLE . 0)
    (:PLAY_STATE_STARTED . 1)
    (:PLAY_STATE_FAILED . 2)
    (:PLAY_STATE_FINISHED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointStatus>) ostream)
  "Serializes a message object of type '<JointStatus>"
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
  (cl:let* ((signed (cl:slot-value msg 'run_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'enable))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'error))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'zero))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'limit_min))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'limit_max))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'tool_size))
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'play_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'log_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'log_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointStatus>) istream)
  "Deserializes a message object of type '<JointStatus>"
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
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'run_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:setf (cl:slot-value msg 'enable) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'enable)))
    (cl:dotimes (i 6)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'error) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'error)))
    (cl:dotimes (i 6)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  (cl:setf (cl:slot-value msg 'zero) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'zero)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'limit_min) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'limit_min)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'limit_max) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'limit_max)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'tool_size) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'tool_size)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'play_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'log_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'log_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointStatus>)))
  "Returns string type for a message object of type '<JointStatus>"
  "limx_arm_msgs/JointStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointStatus)))
  "Returns string type for a message object of type 'JointStatus"
  "limx_arm_msgs/JointStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointStatus>)))
  "Returns md5sum for a message object of type '<JointStatus>"
  "45ad0038f02003358fe0dfc06f395181")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointStatus)))
  "Returns md5sum for a message object of type 'JointStatus"
  "45ad0038f02003358fe0dfc06f395181")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointStatus>)))
  "Returns full string definition for message of type '<JointStatus>"
  (cl:format cl:nil "int64 stamp~%~%string deviceid~%~%int64 run_time~%~%int32[6] enable~%string[6] error~%float32[6] zero~%float32[6] limit_min~%float32[6] limit_max~%float32[3] tool_size~%~%# 01位置控制，03速度模式，04电流模式 ~%int32 MODE_ANGLE    = 1~%int32 MODE_VELOCITY = 3~%int32 MODE_CURRENT  = 4~%int32 mode~%~%int32 STATE_IDLE      = 1~%int32 STATE_STARTED   = 2~%int32 STATE_PAUSED    = 3~%int32 STATE_RESUMED   = 4~%int32 STATE_STOPED    = 5~%int32 STATE_SHUTDOWN  = 6~%int32 state~%~%int32 PLAY_STATE_IDLE      = 0~%int32 PLAY_STATE_STARTED   = 1~%int32 PLAY_STATE_FAILED    = 2~%int32 PLAY_STATE_FINISHED  = 3~%int32 play_state~%~%string log_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointStatus)))
  "Returns full string definition for message of type 'JointStatus"
  (cl:format cl:nil "int64 stamp~%~%string deviceid~%~%int64 run_time~%~%int32[6] enable~%string[6] error~%float32[6] zero~%float32[6] limit_min~%float32[6] limit_max~%float32[3] tool_size~%~%# 01位置控制，03速度模式，04电流模式 ~%int32 MODE_ANGLE    = 1~%int32 MODE_VELOCITY = 3~%int32 MODE_CURRENT  = 4~%int32 mode~%~%int32 STATE_IDLE      = 1~%int32 STATE_STARTED   = 2~%int32 STATE_PAUSED    = 3~%int32 STATE_RESUMED   = 4~%int32 STATE_STOPED    = 5~%int32 STATE_SHUTDOWN  = 6~%int32 state~%~%int32 PLAY_STATE_IDLE      = 0~%int32 PLAY_STATE_STARTED   = 1~%int32 PLAY_STATE_FAILED    = 2~%int32 PLAY_STATE_FINISHED  = 3~%int32 play_state~%~%string log_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointStatus>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'deviceid))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'enable) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'zero) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'limit_min) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'limit_max) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'tool_size) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'log_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'JointStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':deviceid (deviceid msg))
    (cl:cons ':run_time (run_time msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':error (error msg))
    (cl:cons ':zero (zero msg))
    (cl:cons ':limit_min (limit_min msg))
    (cl:cons ':limit_max (limit_max msg))
    (cl:cons ':tool_size (tool_size msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':state (state msg))
    (cl:cons ':play_state (play_state msg))
    (cl:cons ':log_path (log_path msg))
))
