; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetUint32WithTitle-request.msg.html

(cl:defclass <SetUint32WithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass SetUint32WithTitle-request (<SetUint32WithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32WithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32WithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetUint32WithTitle-request> is deprecated: use std_srvs-srv:SetUint32WithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <SetUint32WithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetUint32WithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32WithTitle-request>) ostream)
  "Serializes a message object of type '<SetUint32WithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32WithTitle-request>) istream)
  "Deserializes a message object of type '<SetUint32WithTitle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32WithTitle-request>)))
  "Returns string type for a service object of type '<SetUint32WithTitle-request>"
  "std_srvs/SetUint32WithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32WithTitle-request)))
  "Returns string type for a service object of type 'SetUint32WithTitle-request"
  "std_srvs/SetUint32WithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32WithTitle-request>)))
  "Returns md5sum for a message object of type '<SetUint32WithTitle-request>"
  "9cdfad40ec4ae826abc73be816d2af21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32WithTitle-request)))
  "Returns md5sum for a message object of type 'SetUint32WithTitle-request"
  "9cdfad40ec4ae826abc73be816d2af21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32WithTitle-request>)))
  "Returns full string definition for message of type '<SetUint32WithTitle-request>"
  (cl:format cl:nil "string title~%uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32WithTitle-request)))
  "Returns full string definition for message of type 'SetUint32WithTitle-request"
  (cl:format cl:nil "string title~%uint32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32WithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32WithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32WithTitle-request
    (cl:cons ':title (title msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetUint32WithTitle-response.msg.html

(cl:defclass <SetUint32WithTitle-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetUint32WithTitle-response (<SetUint32WithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32WithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32WithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetUint32WithTitle-response> is deprecated: use std_srvs-srv:SetUint32WithTitle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUint32WithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetUint32WithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32WithTitle-response>) ostream)
  "Serializes a message object of type '<SetUint32WithTitle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32WithTitle-response>) istream)
  "Deserializes a message object of type '<SetUint32WithTitle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32WithTitle-response>)))
  "Returns string type for a service object of type '<SetUint32WithTitle-response>"
  "std_srvs/SetUint32WithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32WithTitle-response)))
  "Returns string type for a service object of type 'SetUint32WithTitle-response"
  "std_srvs/SetUint32WithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32WithTitle-response>)))
  "Returns md5sum for a message object of type '<SetUint32WithTitle-response>"
  "9cdfad40ec4ae826abc73be816d2af21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32WithTitle-response)))
  "Returns md5sum for a message object of type 'SetUint32WithTitle-response"
  "9cdfad40ec4ae826abc73be816d2af21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32WithTitle-response>)))
  "Returns full string definition for message of type '<SetUint32WithTitle-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32WithTitle-response)))
  "Returns full string definition for message of type 'SetUint32WithTitle-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32WithTitle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32WithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32WithTitle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUint32WithTitle)))
  'SetUint32WithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUint32WithTitle)))
  'SetUint32WithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32WithTitle)))
  "Returns string type for a service object of type '<SetUint32WithTitle>"
  "std_srvs/SetUint32WithTitle")