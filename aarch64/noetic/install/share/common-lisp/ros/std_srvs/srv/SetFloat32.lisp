; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetFloat32-request.msg.html

(cl:defclass <SetFloat32-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetFloat32-request (<SetFloat32-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFloat32-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFloat32-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetFloat32-request> is deprecated: use std_srvs-srv:SetFloat32-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetFloat32-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFloat32-request>) ostream)
  "Serializes a message object of type '<SetFloat32-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFloat32-request>) istream)
  "Deserializes a message object of type '<SetFloat32-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFloat32-request>)))
  "Returns string type for a service object of type '<SetFloat32-request>"
  "std_srvs/SetFloat32Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloat32-request)))
  "Returns string type for a service object of type 'SetFloat32-request"
  "std_srvs/SetFloat32Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFloat32-request>)))
  "Returns md5sum for a message object of type '<SetFloat32-request>"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFloat32-request)))
  "Returns md5sum for a message object of type 'SetFloat32-request"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFloat32-request>)))
  "Returns full string definition for message of type '<SetFloat32-request>"
  (cl:format cl:nil "float32  data     # data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFloat32-request)))
  "Returns full string definition for message of type 'SetFloat32-request"
  (cl:format cl:nil "float32  data     # data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFloat32-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFloat32-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFloat32-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetFloat32-response.msg.html

(cl:defclass <SetFloat32-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetFloat32-response (<SetFloat32-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFloat32-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFloat32-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetFloat32-response> is deprecated: use std_srvs-srv:SetFloat32-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetFloat32-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetFloat32-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFloat32-response>) ostream)
  "Serializes a message object of type '<SetFloat32-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFloat32-response>) istream)
  "Deserializes a message object of type '<SetFloat32-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFloat32-response>)))
  "Returns string type for a service object of type '<SetFloat32-response>"
  "std_srvs/SetFloat32Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloat32-response)))
  "Returns string type for a service object of type 'SetFloat32-response"
  "std_srvs/SetFloat32Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFloat32-response>)))
  "Returns md5sum for a message object of type '<SetFloat32-response>"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFloat32-response)))
  "Returns md5sum for a message object of type 'SetFloat32-response"
  "96fbe2a49585a736ad8b4a31afbaf099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFloat32-response>)))
  "Returns full string definition for message of type '<SetFloat32-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFloat32-response)))
  "Returns full string definition for message of type 'SetFloat32-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFloat32-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFloat32-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFloat32-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetFloat32)))
  'SetFloat32-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetFloat32)))
  'SetFloat32-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFloat32)))
  "Returns string type for a service object of type '<SetFloat32>"
  "std_srvs/SetFloat32")