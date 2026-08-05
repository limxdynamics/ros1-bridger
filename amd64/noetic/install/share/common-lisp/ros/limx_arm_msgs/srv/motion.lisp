; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-srv)


;//! \htmlinclude motion-request.msg.html

(cl:defclass <motion-request> (roslisp-msg-protocol:ros-message)
  ((left_arm_pos
    :reader left_arm_pos
    :initarg :left_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (right_arm_pos
    :reader right_arm_pos
    :initarg :right_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (duration_time
    :reader duration_time
    :initarg :duration_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass motion-request (<motion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<motion-request> is deprecated: use limx_arm_msgs-srv:motion-request instead.")))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:left_arm_pos-val is deprecated.  Use limx_arm_msgs-srv:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:right_arm_pos-val is deprecated.  Use limx_arm_msgs-srv:right_arm_pos instead.")
  (right_arm_pos m))

(cl:ensure-generic-function 'duration_time-val :lambda-list '(m))
(cl:defmethod duration_time-val ((m <motion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:duration_time-val is deprecated.  Use limx_arm_msgs-srv:duration_time instead.")
  (duration_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motion-request>) ostream)
  "Serializes a message object of type '<motion-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motion-request>) istream)
  "Deserializes a message object of type '<motion-request>"
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
    (cl:setf (cl:slot-value msg 'duration_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motion-request>)))
  "Returns string type for a service object of type '<motion-request>"
  "limx_arm_msgs/motionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion-request)))
  "Returns string type for a service object of type 'motion-request"
  "limx_arm_msgs/motionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motion-request>)))
  "Returns md5sum for a message object of type '<motion-request>"
  "8f1c1118d46310f55cbaa0a387118cdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motion-request)))
  "Returns md5sum for a message object of type 'motion-request"
  "8f1c1118d46310f55cbaa0a387118cdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motion-request>)))
  "Returns full string definition for message of type '<motion-request>"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]~%float32 duration_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motion-request)))
  "Returns full string definition for message of type 'motion-request"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw]~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw]~%float32 duration_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motion-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'motion-request
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
    (cl:cons ':duration_time (duration_time msg))
))
;//! \htmlinclude motion-response.msg.html

(cl:defclass <motion-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass motion-response (<motion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<motion-response> is deprecated: use limx_arm_msgs-srv:motion-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <motion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:status-val is deprecated.  Use limx_arm_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motion-response>) ostream)
  "Serializes a message object of type '<motion-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motion-response>) istream)
  "Deserializes a message object of type '<motion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motion-response>)))
  "Returns string type for a service object of type '<motion-response>"
  "limx_arm_msgs/motionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion-response)))
  "Returns string type for a service object of type 'motion-response"
  "limx_arm_msgs/motionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motion-response>)))
  "Returns md5sum for a message object of type '<motion-response>"
  "8f1c1118d46310f55cbaa0a387118cdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motion-response)))
  "Returns md5sum for a message object of type 'motion-response"
  "8f1c1118d46310f55cbaa0a387118cdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motion-response>)))
  "Returns full string definition for message of type '<motion-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motion-response)))
  "Returns full string definition for message of type 'motion-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motion-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'motion-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'motion)))
  'motion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'motion)))
  'motion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motion)))
  "Returns string type for a service object of type '<motion>"
  "limx_arm_msgs/motion")