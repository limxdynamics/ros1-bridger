; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-srv)


;//! \htmlinclude DA_motion-request.msg.html

(cl:defclass <DA_motion-request> (roslisp-msg-protocol:ros-message)
  ((functionName
    :reader functionName
    :initarg :functionName
    :type cl:string
    :initform "")
   (left_arm_pos
    :reader left_arm_pos
    :initarg :left_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (right_arm_pos
    :reader right_arm_pos
    :initarg :right_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (left_arm_joints
    :reader left_arm_joints
    :initarg :left_arm_joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (right_arm_joints
    :reader right_arm_joints
    :initarg :right_arm_joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (headPos
    :reader headPos
    :initarg :headPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass DA_motion-request (<DA_motion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DA_motion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DA_motion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<DA_motion-request> is deprecated: use limx_arm_msgs-srv:DA_motion-request instead.")))

(cl:ensure-generic-function 'functionName-val :lambda-list '(m))
(cl:defmethod functionName-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:functionName-val is deprecated.  Use limx_arm_msgs-srv:functionName instead.")
  (functionName m))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:left_arm_pos-val is deprecated.  Use limx_arm_msgs-srv:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:right_arm_pos-val is deprecated.  Use limx_arm_msgs-srv:right_arm_pos instead.")
  (right_arm_pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:speed-val is deprecated.  Use limx_arm_msgs-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'left_arm_joints-val :lambda-list '(m))
(cl:defmethod left_arm_joints-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:left_arm_joints-val is deprecated.  Use limx_arm_msgs-srv:left_arm_joints instead.")
  (left_arm_joints m))

(cl:ensure-generic-function 'right_arm_joints-val :lambda-list '(m))
(cl:defmethod right_arm_joints-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:right_arm_joints-val is deprecated.  Use limx_arm_msgs-srv:right_arm_joints instead.")
  (right_arm_joints m))

(cl:ensure-generic-function 'headPos-val :lambda-list '(m))
(cl:defmethod headPos-val ((m <DA_motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:headPos-val is deprecated.  Use limx_arm_msgs-srv:headPos instead.")
  (headPos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DA_motion-request>) ostream)
  "Serializes a message object of type '<DA_motion-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'functionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'functionName))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_arm_pos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_arm_pos))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_arm_joints))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_arm_joints))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'headPos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DA_motion-request>) istream)
  "Deserializes a message object of type '<DA_motion-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'functionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'functionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'left_arm_pos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'left_arm_pos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_arm_pos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'right_arm_pos)))
    (cl:dotimes (i 7)
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
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'left_arm_joints) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'left_arm_joints)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_arm_joints) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'right_arm_joints)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'headPos) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'headPos)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DA_motion-request>)))
  "Returns string type for a service object of type '<DA_motion-request>"
  "limx_arm_msgs/DA_motionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DA_motion-request)))
  "Returns string type for a service object of type 'DA_motion-request"
  "limx_arm_msgs/DA_motionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DA_motion-request>)))
  "Returns md5sum for a message object of type '<DA_motion-request>"
  "6513938defdd69ca721d029105170004")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DA_motion-request)))
  "Returns md5sum for a message object of type 'DA_motion-request"
  "6513938defdd69ca721d029105170004")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DA_motion-request>)))
  "Returns full string definition for message of type '<DA_motion-request>"
  (cl:format cl:nil "string functionName~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]~%float32 speed ~%float32[7] left_arm_joints~%float32[7] right_arm_joints  ~%float32[2] headPos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DA_motion-request)))
  "Returns full string definition for message of type 'DA_motion-request"
  (cl:format cl:nil "string functionName~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]~%float32 speed ~%float32[7] left_arm_joints~%float32[7] right_arm_joints  ~%float32[2] headPos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DA_motion-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'functionName))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'headPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DA_motion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DA_motion-request
    (cl:cons ':functionName (functionName msg))
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':left_arm_joints (left_arm_joints msg))
    (cl:cons ':right_arm_joints (right_arm_joints msg))
    (cl:cons ':headPos (headPos msg))
))
;//! \htmlinclude DA_motion-response.msg.html

(cl:defclass <DA_motion-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass DA_motion-response (<DA_motion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DA_motion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DA_motion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<DA_motion-response> is deprecated: use limx_arm_msgs-srv:DA_motion-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DA_motion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:status-val is deprecated.  Use limx_arm_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DA_motion-response>) ostream)
  "Serializes a message object of type '<DA_motion-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DA_motion-response>) istream)
  "Deserializes a message object of type '<DA_motion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DA_motion-response>)))
  "Returns string type for a service object of type '<DA_motion-response>"
  "limx_arm_msgs/DA_motionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DA_motion-response)))
  "Returns string type for a service object of type 'DA_motion-response"
  "limx_arm_msgs/DA_motionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DA_motion-response>)))
  "Returns md5sum for a message object of type '<DA_motion-response>"
  "6513938defdd69ca721d029105170004")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DA_motion-response)))
  "Returns md5sum for a message object of type 'DA_motion-response"
  "6513938defdd69ca721d029105170004")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DA_motion-response>)))
  "Returns full string definition for message of type '<DA_motion-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DA_motion-response)))
  "Returns full string definition for message of type 'DA_motion-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DA_motion-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DA_motion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DA_motion-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DA_motion)))
  'DA_motion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DA_motion)))
  'DA_motion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DA_motion)))
  "Returns string type for a service object of type '<DA_motion>"
  "limx_arm_msgs/DA_motion")