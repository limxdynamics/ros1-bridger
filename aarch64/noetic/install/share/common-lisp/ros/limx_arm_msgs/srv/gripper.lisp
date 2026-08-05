; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-srv)


;//! \htmlinclude gripper-request.msg.html

(cl:defclass <gripper-request> (roslisp-msg-protocol:ros-message)
  ((initial
    :reader initial
    :initarg :initial
    :type cl:boolean
    :initform cl:nil)
   (dis
    :reader dis
    :initarg :dis
    :type cl:integer
    :initform 0)
   (force
    :reader force
    :initarg :force
    :type cl:integer
    :initform 0))
)

(cl:defclass gripper-request (<gripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<gripper-request> is deprecated: use limx_arm_msgs-srv:gripper-request instead.")))

(cl:ensure-generic-function 'initial-val :lambda-list '(m))
(cl:defmethod initial-val ((m <gripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:initial-val is deprecated.  Use limx_arm_msgs-srv:initial instead.")
  (initial m))

(cl:ensure-generic-function 'dis-val :lambda-list '(m))
(cl:defmethod dis-val ((m <gripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:dis-val is deprecated.  Use limx_arm_msgs-srv:dis instead.")
  (dis m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <gripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:force-val is deprecated.  Use limx_arm_msgs-srv:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper-request>) ostream)
  "Serializes a message object of type '<gripper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initial) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'dis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'force)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper-request>) istream)
  "Deserializes a message object of type '<gripper-request>"
    (cl:setf (cl:slot-value msg 'initial) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'force) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper-request>)))
  "Returns string type for a service object of type '<gripper-request>"
  "limx_arm_msgs/gripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper-request)))
  "Returns string type for a service object of type 'gripper-request"
  "limx_arm_msgs/gripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper-request>)))
  "Returns md5sum for a message object of type '<gripper-request>"
  "0f92630af2d2a713e88b3235d577ea49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper-request)))
  "Returns md5sum for a message object of type 'gripper-request"
  "0f92630af2d2a713e88b3235d577ea49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper-request>)))
  "Returns full string definition for message of type '<gripper-request>"
  (cl:format cl:nil "bool initial~%int32 dis~%int32 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper-request)))
  "Returns full string definition for message of type 'gripper-request"
  (cl:format cl:nil "bool initial~%int32 dis~%int32 force~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper-request
    (cl:cons ':initial (initial msg))
    (cl:cons ':dis (dis msg))
    (cl:cons ':force (force msg))
))
;//! \htmlinclude gripper-response.msg.html

(cl:defclass <gripper-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass gripper-response (<gripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-srv:<gripper-response> is deprecated: use limx_arm_msgs-srv:gripper-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <gripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-srv:status-val is deprecated.  Use limx_arm_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper-response>) ostream)
  "Serializes a message object of type '<gripper-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper-response>) istream)
  "Deserializes a message object of type '<gripper-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper-response>)))
  "Returns string type for a service object of type '<gripper-response>"
  "limx_arm_msgs/gripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper-response)))
  "Returns string type for a service object of type 'gripper-response"
  "limx_arm_msgs/gripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper-response>)))
  "Returns md5sum for a message object of type '<gripper-response>"
  "0f92630af2d2a713e88b3235d577ea49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper-response)))
  "Returns md5sum for a message object of type 'gripper-response"
  "0f92630af2d2a713e88b3235d577ea49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper-response>)))
  "Returns full string definition for message of type '<gripper-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper-response)))
  "Returns full string definition for message of type 'gripper-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gripper)))
  'gripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gripper)))
  'gripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper)))
  "Returns string type for a service object of type '<gripper>"
  "limx_arm_msgs/gripper")