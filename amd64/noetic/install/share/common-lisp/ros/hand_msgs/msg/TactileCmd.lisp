; Auto-generated. Do not edit!


(cl:in-package hand_msgs-msg)


;//! \htmlinclude TactileCmd.msg.html

(cl:defclass <TactileCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (tactile_switch
    :reader tactile_switch
    :initarg :tactile_switch
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (channel_reset
    :reader channel_reset
    :initarg :channel_reset
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (calibration_trigger
    :reader calibration_trigger
    :initarg :calibration_trigger
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass TactileCmd (<TactileCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TactileCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TactileCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_msgs-msg:<TactileCmd> is deprecated: use hand_msgs-msg:TactileCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TactileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:header-val is deprecated.  Use hand_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <TactileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:names-val is deprecated.  Use hand_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'tactile_switch-val :lambda-list '(m))
(cl:defmethod tactile_switch-val ((m <TactileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:tactile_switch-val is deprecated.  Use hand_msgs-msg:tactile_switch instead.")
  (tactile_switch m))

(cl:ensure-generic-function 'channel_reset-val :lambda-list '(m))
(cl:defmethod channel_reset-val ((m <TactileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:channel_reset-val is deprecated.  Use hand_msgs-msg:channel_reset instead.")
  (channel_reset m))

(cl:ensure-generic-function 'calibration_trigger-val :lambda-list '(m))
(cl:defmethod calibration_trigger-val ((m <TactileCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:calibration_trigger-val is deprecated.  Use hand_msgs-msg:calibration_trigger instead.")
  (calibration_trigger m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TactileCmd>) ostream)
  "Serializes a message object of type '<TactileCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tactile_switch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'tactile_switch))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channel_reset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'channel_reset))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'calibration_trigger))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'calibration_trigger))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TactileCmd>) istream)
  "Deserializes a message object of type '<TactileCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tactile_switch) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tactile_switch)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channel_reset) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channel_reset)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'calibration_trigger) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'calibration_trigger)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TactileCmd>)))
  "Returns string type for a message object of type '<TactileCmd>"
  "hand_msgs/TactileCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TactileCmd)))
  "Returns string type for a message object of type 'TactileCmd"
  "hand_msgs/TactileCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TactileCmd>)))
  "Returns md5sum for a message object of type '<TactileCmd>"
  "8b0263238e251bcb7003327943797186")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TactileCmd)))
  "Returns md5sum for a message object of type 'TactileCmd"
  "8b0263238e251bcb7003327943797186")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TactileCmd>)))
  "Returns full string definition for message of type '<TactileCmd>"
  (cl:format cl:nil "std_msgs/Header header~%~%string[]  names~%bool[] tactile_switch             # 触觉开关 (true=开启 false=关闭)~%bool[] channel_reset              # 通道复位 (true触发, 执行时手指不可受力)~%bool[] calibration_trigger        # 参数校准 (true触发, 执行约10s内数据不可用, 手指不可受力)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TactileCmd)))
  "Returns full string definition for message of type 'TactileCmd"
  (cl:format cl:nil "std_msgs/Header header~%~%string[]  names~%bool[] tactile_switch             # 触觉开关 (true=开启 false=关闭)~%bool[] channel_reset              # 通道复位 (true触发, 执行时手指不可受力)~%bool[] calibration_trigger        # 参数校准 (true触发, 执行约10s内数据不可用, 手指不可受力)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TactileCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tactile_switch) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channel_reset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'calibration_trigger) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TactileCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'TactileCmd
    (cl:cons ':header (header msg))
    (cl:cons ':names (names msg))
    (cl:cons ':tactile_switch (tactile_switch msg))
    (cl:cons ':channel_reset (channel_reset msg))
    (cl:cons ':calibration_trigger (calibration_trigger msg))
))
