; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetStringWithTitle-request.msg.html

(cl:defclass <GetStringWithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass GetStringWithTitle-request (<GetStringWithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringWithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringWithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetStringWithTitle-request> is deprecated: use std_srvs-srv:GetStringWithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <GetStringWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringWithTitle-request>) ostream)
  "Serializes a message object of type '<GetStringWithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringWithTitle-request>) istream)
  "Deserializes a message object of type '<GetStringWithTitle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringWithTitle-request>)))
  "Returns string type for a service object of type '<GetStringWithTitle-request>"
  "std_srvs/GetStringWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringWithTitle-request)))
  "Returns string type for a service object of type 'GetStringWithTitle-request"
  "std_srvs/GetStringWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringWithTitle-request>)))
  "Returns md5sum for a message object of type '<GetStringWithTitle-request>"
  "810c8c2635a677ff04ec479f60a543bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringWithTitle-request)))
  "Returns md5sum for a message object of type 'GetStringWithTitle-request"
  "810c8c2635a677ff04ec479f60a543bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringWithTitle-request>)))
  "Returns full string definition for message of type '<GetStringWithTitle-request>"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringWithTitle-request)))
  "Returns full string definition for message of type 'GetStringWithTitle-request"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringWithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringWithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringWithTitle-request
    (cl:cons ':title (title msg))
))
;//! \htmlinclude GetStringWithTitle-response.msg.html

(cl:defclass <GetStringWithTitle-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
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

(cl:defclass GetStringWithTitle-response (<GetStringWithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringWithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringWithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetStringWithTitle-response> is deprecated: use std_srvs-srv:GetStringWithTitle-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetStringWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetStringWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetStringWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringWithTitle-response>) ostream)
  "Serializes a message object of type '<GetStringWithTitle-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringWithTitle-response>) istream)
  "Deserializes a message object of type '<GetStringWithTitle-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringWithTitle-response>)))
  "Returns string type for a service object of type '<GetStringWithTitle-response>"
  "std_srvs/GetStringWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringWithTitle-response)))
  "Returns string type for a service object of type 'GetStringWithTitle-response"
  "std_srvs/GetStringWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringWithTitle-response>)))
  "Returns md5sum for a message object of type '<GetStringWithTitle-response>"
  "810c8c2635a677ff04ec479f60a543bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringWithTitle-response)))
  "Returns md5sum for a message object of type 'GetStringWithTitle-response"
  "810c8c2635a677ff04ec479f60a543bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringWithTitle-response>)))
  "Returns full string definition for message of type '<GetStringWithTitle-response>"
  (cl:format cl:nil "string data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringWithTitle-response)))
  "Returns full string definition for message of type 'GetStringWithTitle-response"
  (cl:format cl:nil "string data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringWithTitle-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringWithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringWithTitle-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStringWithTitle)))
  'GetStringWithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStringWithTitle)))
  'GetStringWithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringWithTitle)))
  "Returns string type for a service object of type '<GetStringWithTitle>"
  "std_srvs/GetStringWithTitle")