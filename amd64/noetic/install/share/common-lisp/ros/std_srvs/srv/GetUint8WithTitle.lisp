; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetUint8WithTitle-request.msg.html

(cl:defclass <GetUint8WithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass GetUint8WithTitle-request (<GetUint8WithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint8WithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint8WithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint8WithTitle-request> is deprecated: use std_srvs-srv:GetUint8WithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <GetUint8WithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint8WithTitle-request>) ostream)
  "Serializes a message object of type '<GetUint8WithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint8WithTitle-request>) istream)
  "Deserializes a message object of type '<GetUint8WithTitle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint8WithTitle-request>)))
  "Returns string type for a service object of type '<GetUint8WithTitle-request>"
  "std_srvs/GetUint8WithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8WithTitle-request)))
  "Returns string type for a service object of type 'GetUint8WithTitle-request"
  "std_srvs/GetUint8WithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint8WithTitle-request>)))
  "Returns md5sum for a message object of type '<GetUint8WithTitle-request>"
  "64d58bd676264796fea70ec2d8c95b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint8WithTitle-request)))
  "Returns md5sum for a message object of type 'GetUint8WithTitle-request"
  "64d58bd676264796fea70ec2d8c95b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint8WithTitle-request>)))
  "Returns full string definition for message of type '<GetUint8WithTitle-request>"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint8WithTitle-request)))
  "Returns full string definition for message of type 'GetUint8WithTitle-request"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint8WithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint8WithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint8WithTitle-request
    (cl:cons ':title (title msg))
))
;//! \htmlinclude GetUint8WithTitle-response.msg.html

(cl:defclass <GetUint8WithTitle-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0)
   (success
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

(cl:defclass GetUint8WithTitle-response (<GetUint8WithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint8WithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint8WithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint8WithTitle-response> is deprecated: use std_srvs-srv:GetUint8WithTitle-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetUint8WithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetUint8WithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetUint8WithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint8WithTitle-response>) ostream)
  "Serializes a message object of type '<GetUint8WithTitle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint8WithTitle-response>) istream)
  "Deserializes a message object of type '<GetUint8WithTitle-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint8WithTitle-response>)))
  "Returns string type for a service object of type '<GetUint8WithTitle-response>"
  "std_srvs/GetUint8WithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8WithTitle-response)))
  "Returns string type for a service object of type 'GetUint8WithTitle-response"
  "std_srvs/GetUint8WithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint8WithTitle-response>)))
  "Returns md5sum for a message object of type '<GetUint8WithTitle-response>"
  "64d58bd676264796fea70ec2d8c95b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint8WithTitle-response)))
  "Returns md5sum for a message object of type 'GetUint8WithTitle-response"
  "64d58bd676264796fea70ec2d8c95b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint8WithTitle-response>)))
  "Returns full string definition for message of type '<GetUint8WithTitle-response>"
  (cl:format cl:nil "uint8 data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint8WithTitle-response)))
  "Returns full string definition for message of type 'GetUint8WithTitle-response"
  (cl:format cl:nil "uint8 data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint8WithTitle-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint8WithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint8WithTitle-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUint8WithTitle)))
  'GetUint8WithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUint8WithTitle)))
  'GetUint8WithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8WithTitle)))
  "Returns string type for a service object of type '<GetUint8WithTitle>"
  "std_srvs/GetUint8WithTitle")