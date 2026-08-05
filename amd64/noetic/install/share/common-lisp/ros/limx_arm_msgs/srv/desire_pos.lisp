; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-srv)


;//! \htmlinclude desire_pos-request.msg.html

(cl:defclass <desire_pos-request> (roslisp-msg-protocol:ros-message)
  ((taskNum
    :reader taskNum
    :initarg :taskNum
    :type cl:integer
    :initform 0)
   (desire_pos
    :reader desire_pos
    :initarg :desire_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (co_control
    :reader co_control
    :initarg :co_control
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass desire_pos-request (<desire_pos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <desire_pos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'desire_pos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<desire_pos-request> is deprecated: use limx_arm_msgs-srv:desire_pos-request instead.")))

(cl:ensure-generic-function 'taskNum-val :lambda-list '(m))
(cl:defmethod taskNum-val ((m <desire_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:taskNum-val is deprecated.  Use limx_arm_msgs-srv:taskNum instead.")
  (taskNum m))

(cl:ensure-generic-function 'desire_pos-val :lambda-list '(m))
(cl:defmethod desire_pos-val ((m <desire_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:desire_pos-val is deprecated.  Use limx_arm_msgs-srv:desire_pos instead.")
  (desire_pos m))

(cl:ensure-generic-function 'co_control-val :lambda-list '(m))
(cl:defmethod co_control-val ((m <desire_pos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:co_control-val is deprecated.  Use limx_arm_msgs-srv:co_control instead.")
  (co_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <desire_pos-request>) ostream)
  "Serializes a message object of type '<desire_pos-request>"
  (cl:let* ((signed (cl:slot-value msg 'taskNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
   (cl:slot-value msg 'desire_pos))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'co_control) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <desire_pos-request>) istream)
  "Deserializes a message object of type '<desire_pos-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'taskNum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'desire_pos) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'desire_pos)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'co_control) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<desire_pos-request>)))
  "Returns string type for a service object of type '<desire_pos-request>"
  "limx_arm_msgs/desire_posRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'desire_pos-request)))
  "Returns string type for a service object of type 'desire_pos-request"
  "limx_arm_msgs/desire_posRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<desire_pos-request>)))
  "Returns md5sum for a message object of type '<desire_pos-request>"
  "66df596b0ec651af3f62afa42d52c21b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'desire_pos-request)))
  "Returns md5sum for a message object of type 'desire_pos-request"
  "66df596b0ec651af3f62afa42d52c21b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<desire_pos-request>)))
  "Returns full string definition for message of type '<desire_pos-request>"
  (cl:format cl:nil "int32 taskNum~%float32[6] desire_pos  # deg/m~%bool co_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'desire_pos-request)))
  "Returns full string definition for message of type 'desire_pos-request"
  (cl:format cl:nil "int32 taskNum~%float32[6] desire_pos  # deg/m~%bool co_control~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <desire_pos-request>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'desire_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <desire_pos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'desire_pos-request
    (cl:cons ':taskNum (taskNum msg))
    (cl:cons ':desire_pos (desire_pos msg))
    (cl:cons ':co_control (co_control msg))
))
;//! \htmlinclude desire_pos-response.msg.html

(cl:defclass <desire_pos-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass desire_pos-response (<desire_pos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <desire_pos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'desire_pos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<desire_pos-response> is deprecated: use limx_arm_msgs-srv:desire_pos-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <desire_pos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:status-val is deprecated.  Use limx_arm_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <desire_pos-response>) ostream)
  "Serializes a message object of type '<desire_pos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <desire_pos-response>) istream)
  "Deserializes a message object of type '<desire_pos-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<desire_pos-response>)))
  "Returns string type for a service object of type '<desire_pos-response>"
  "limx_arm_msgs/desire_posResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'desire_pos-response)))
  "Returns string type for a service object of type 'desire_pos-response"
  "limx_arm_msgs/desire_posResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<desire_pos-response>)))
  "Returns md5sum for a message object of type '<desire_pos-response>"
  "66df596b0ec651af3f62afa42d52c21b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'desire_pos-response)))
  "Returns md5sum for a message object of type 'desire_pos-response"
  "66df596b0ec651af3f62afa42d52c21b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<desire_pos-response>)))
  "Returns full string definition for message of type '<desire_pos-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'desire_pos-response)))
  "Returns full string definition for message of type 'desire_pos-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <desire_pos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <desire_pos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'desire_pos-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'desire_pos)))
  'desire_pos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'desire_pos)))
  'desire_pos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'desire_pos)))
  "Returns string type for a service object of type '<desire_pos>"
  "limx_arm_msgs/desire_pos")