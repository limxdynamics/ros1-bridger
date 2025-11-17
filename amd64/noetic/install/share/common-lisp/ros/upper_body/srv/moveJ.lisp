; Auto-generated. Do not edit!


(cl:in-package upper_body-srv)


;//! \htmlinclude moveJ-request.msg.html

(cl:defclass <moveJ-request> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass moveJ-request (<moveJ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveJ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveJ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-srv:<moveJ-request> is deprecated: use upper_body-srv:moveJ-request instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <moveJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-srv:joints-val is deprecated.  Use upper_body-srv:joints instead.")
  (joints m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <moveJ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-srv:speed-val is deprecated.  Use upper_body-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveJ-request>) ostream)
  "Serializes a message object of type '<moveJ-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveJ-request>) istream)
  "Deserializes a message object of type '<moveJ-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveJ-request>)))
  "Returns string type for a service object of type '<moveJ-request>"
  "upper_body/moveJRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveJ-request)))
  "Returns string type for a service object of type 'moveJ-request"
  "upper_body/moveJRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveJ-request>)))
  "Returns md5sum for a message object of type '<moveJ-request>"
  "2c017c62265b01f61bfb2f0a385a78f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveJ-request)))
  "Returns md5sum for a message object of type 'moveJ-request"
  "2c017c62265b01f61bfb2f0a385a78f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveJ-request>)))
  "Returns full string definition for message of type '<moveJ-request>"
  (cl:format cl:nil "float32[] joints # unit: rad~%float32 speed # unit: rad/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveJ-request)))
  "Returns full string definition for message of type 'moveJ-request"
  (cl:format cl:nil "float32[] joints # unit: rad~%float32 speed # unit: rad/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveJ-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveJ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'moveJ-request
    (cl:cons ':joints (joints msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude moveJ-response.msg.html

(cl:defclass <moveJ-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass moveJ-response (<moveJ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <moveJ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'moveJ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-srv:<moveJ-response> is deprecated: use upper_body-srv:moveJ-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <moveJ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-srv:status-val is deprecated.  Use upper_body-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <moveJ-response>) ostream)
  "Serializes a message object of type '<moveJ-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <moveJ-response>) istream)
  "Deserializes a message object of type '<moveJ-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<moveJ-response>)))
  "Returns string type for a service object of type '<moveJ-response>"
  "upper_body/moveJResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveJ-response)))
  "Returns string type for a service object of type 'moveJ-response"
  "upper_body/moveJResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<moveJ-response>)))
  "Returns md5sum for a message object of type '<moveJ-response>"
  "2c017c62265b01f61bfb2f0a385a78f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'moveJ-response)))
  "Returns md5sum for a message object of type 'moveJ-response"
  "2c017c62265b01f61bfb2f0a385a78f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<moveJ-response>)))
  "Returns full string definition for message of type '<moveJ-response>"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'moveJ-response)))
  "Returns full string definition for message of type 'moveJ-response"
  (cl:format cl:nil "int32 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <moveJ-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <moveJ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'moveJ-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'moveJ)))
  'moveJ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'moveJ)))
  'moveJ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'moveJ)))
  "Returns string type for a service object of type '<moveJ>"
  "upper_body/moveJ")