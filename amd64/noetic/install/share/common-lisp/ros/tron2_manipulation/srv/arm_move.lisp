; Auto-generated. Do not edit!


(cl:in-package tron2_manipulation-srv)


;//! \htmlinclude arm_move-request.msg.html

(cl:defclass <arm_move-request> (roslisp-msg-protocol:ros-message)
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
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass arm_move-request (<arm_move-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_move-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_move-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tron2_manipulation-srv:<arm_move-request> is deprecated: use tron2_manipulation-srv:arm_move-request instead.")))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <arm_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-srv:left_arm_pos-val is deprecated.  Use tron2_manipulation-srv:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <arm_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-srv:right_arm_pos-val is deprecated.  Use tron2_manipulation-srv:right_arm_pos instead.")
  (right_arm_pos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <arm_move-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-srv:speed-val is deprecated.  Use tron2_manipulation-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_move-request>) ostream)
  "Serializes a message object of type '<arm_move-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_move-request>) istream)
  "Deserializes a message object of type '<arm_move-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_move-request>)))
  "Returns string type for a service object of type '<arm_move-request>"
  "tron2_manipulation/arm_moveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_move-request)))
  "Returns string type for a service object of type 'arm_move-request"
  "tron2_manipulation/arm_moveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_move-request>)))
  "Returns md5sum for a message object of type '<arm_move-request>"
  "cb0d0168c3a57fd86480cb1b06f339b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_move-request)))
  "Returns md5sum for a message object of type 'arm_move-request"
  "cb0d0168c3a57fd86480cb1b06f339b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_move-request>)))
  "Returns full string definition for message of type '<arm_move-request>"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%# speed~%float32 speed # unit: rad/s or m/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_move-request)))
  "Returns full string definition for message of type 'arm_move-request"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%# speed~%float32 speed # unit: rad/s or m/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_move-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_move-request>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_move-request
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude arm_move-response.msg.html

(cl:defclass <arm_move-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass arm_move-response (<arm_move-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_move-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_move-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tron2_manipulation-srv:<arm_move-response> is deprecated: use tron2_manipulation-srv:arm_move-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <arm_move-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-srv:status-val is deprecated.  Use tron2_manipulation-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_move-response>) ostream)
  "Serializes a message object of type '<arm_move-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_move-response>) istream)
  "Deserializes a message object of type '<arm_move-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_move-response>)))
  "Returns string type for a service object of type '<arm_move-response>"
  "tron2_manipulation/arm_moveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_move-response)))
  "Returns string type for a service object of type 'arm_move-response"
  "tron2_manipulation/arm_moveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_move-response>)))
  "Returns md5sum for a message object of type '<arm_move-response>"
  "cb0d0168c3a57fd86480cb1b06f339b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_move-response)))
  "Returns md5sum for a message object of type 'arm_move-response"
  "cb0d0168c3a57fd86480cb1b06f339b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_move-response>)))
  "Returns full string definition for message of type '<arm_move-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_move-response)))
  "Returns full string definition for message of type 'arm_move-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_move-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_move-response>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_move-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'arm_move)))
  'arm_move-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'arm_move)))
  'arm_move-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_move)))
  "Returns string type for a service object of type '<arm_move>"
  "tron2_manipulation/arm_move")