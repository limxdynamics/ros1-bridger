; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetStringWithTitle-request.msg.html

(cl:defclass <SetStringWithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass SetStringWithTitle-request (<SetStringWithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringWithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringWithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetStringWithTitle-request> is deprecated: use std_srvs-srv:SetStringWithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <SetStringWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetStringWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringWithTitle-request>) ostream)
  "Serializes a message object of type '<SetStringWithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringWithTitle-request>) istream)
  "Deserializes a message object of type '<SetStringWithTitle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringWithTitle-request>)))
  "Returns string type for a service object of type '<SetStringWithTitle-request>"
  "std_srvs/SetStringWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringWithTitle-request)))
  "Returns string type for a service object of type 'SetStringWithTitle-request"
  "std_srvs/SetStringWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringWithTitle-request>)))
  "Returns md5sum for a message object of type '<SetStringWithTitle-request>"
  "587dcc11db273570c8595f5c589bb21b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringWithTitle-request)))
  "Returns md5sum for a message object of type 'SetStringWithTitle-request"
  "587dcc11db273570c8595f5c589bb21b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringWithTitle-request>)))
  "Returns full string definition for message of type '<SetStringWithTitle-request>"
  (cl:format cl:nil "string title~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringWithTitle-request)))
  "Returns full string definition for message of type 'SetStringWithTitle-request"
  (cl:format cl:nil "string title~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringWithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringWithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringWithTitle-request
    (cl:cons ':title (title msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetStringWithTitle-response.msg.html

(cl:defclass <SetStringWithTitle-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetStringWithTitle-response (<SetStringWithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringWithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringWithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetStringWithTitle-response> is deprecated: use std_srvs-srv:SetStringWithTitle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetStringWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetStringWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringWithTitle-response>) ostream)
  "Serializes a message object of type '<SetStringWithTitle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringWithTitle-response>) istream)
  "Deserializes a message object of type '<SetStringWithTitle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringWithTitle-response>)))
  "Returns string type for a service object of type '<SetStringWithTitle-response>"
  "std_srvs/SetStringWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringWithTitle-response)))
  "Returns string type for a service object of type 'SetStringWithTitle-response"
  "std_srvs/SetStringWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringWithTitle-response>)))
  "Returns md5sum for a message object of type '<SetStringWithTitle-response>"
  "587dcc11db273570c8595f5c589bb21b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringWithTitle-response)))
  "Returns md5sum for a message object of type 'SetStringWithTitle-response"
  "587dcc11db273570c8595f5c589bb21b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringWithTitle-response>)))
  "Returns full string definition for message of type '<SetStringWithTitle-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringWithTitle-response)))
  "Returns full string definition for message of type 'SetStringWithTitle-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringWithTitle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringWithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringWithTitle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetStringWithTitle)))
  'SetStringWithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetStringWithTitle)))
  'SetStringWithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringWithTitle)))
  "Returns string type for a service object of type '<SetStringWithTitle>"
  "std_srvs/SetStringWithTitle")