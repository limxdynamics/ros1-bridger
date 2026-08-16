; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetBoolWithTile-request.msg.html

(cl:defclass <GetBoolWithTile-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass GetBoolWithTile-request (<GetBoolWithTile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoolWithTile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoolWithTile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetBoolWithTile-request> is deprecated: use std_srvs-srv:GetBoolWithTile-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <GetBoolWithTile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoolWithTile-request>) ostream)
  "Serializes a message object of type '<GetBoolWithTile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoolWithTile-request>) istream)
  "Deserializes a message object of type '<GetBoolWithTile-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoolWithTile-request>)))
  "Returns string type for a service object of type '<GetBoolWithTile-request>"
  "std_srvs/GetBoolWithTileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoolWithTile-request)))
  "Returns string type for a service object of type 'GetBoolWithTile-request"
  "std_srvs/GetBoolWithTileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoolWithTile-request>)))
  "Returns md5sum for a message object of type '<GetBoolWithTile-request>"
  "9249c32b355c3c3418b36019eafdd629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoolWithTile-request)))
  "Returns md5sum for a message object of type 'GetBoolWithTile-request"
  "9249c32b355c3c3418b36019eafdd629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoolWithTile-request>)))
  "Returns full string definition for message of type '<GetBoolWithTile-request>"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoolWithTile-request)))
  "Returns full string definition for message of type 'GetBoolWithTile-request"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoolWithTile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoolWithTile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoolWithTile-request
    (cl:cons ':title (title msg))
))
;//! \htmlinclude GetBoolWithTile-response.msg.html

(cl:defclass <GetBoolWithTile-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass GetBoolWithTile-response (<GetBoolWithTile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoolWithTile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoolWithTile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetBoolWithTile-response> is deprecated: use std_srvs-srv:GetBoolWithTile-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetBoolWithTile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetBoolWithTile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetBoolWithTile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoolWithTile-response>) ostream)
  "Serializes a message object of type '<GetBoolWithTile-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoolWithTile-response>) istream)
  "Deserializes a message object of type '<GetBoolWithTile-response>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoolWithTile-response>)))
  "Returns string type for a service object of type '<GetBoolWithTile-response>"
  "std_srvs/GetBoolWithTileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoolWithTile-response)))
  "Returns string type for a service object of type 'GetBoolWithTile-response"
  "std_srvs/GetBoolWithTileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoolWithTile-response>)))
  "Returns md5sum for a message object of type '<GetBoolWithTile-response>"
  "9249c32b355c3c3418b36019eafdd629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoolWithTile-response)))
  "Returns md5sum for a message object of type 'GetBoolWithTile-response"
  "9249c32b355c3c3418b36019eafdd629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoolWithTile-response>)))
  "Returns full string definition for message of type '<GetBoolWithTile-response>"
  (cl:format cl:nil "bool data # e.g. for hardware enabling / disabling~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoolWithTile-response)))
  "Returns full string definition for message of type 'GetBoolWithTile-response"
  (cl:format cl:nil "bool data # e.g. for hardware enabling / disabling~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoolWithTile-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoolWithTile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoolWithTile-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBoolWithTile)))
  'GetBoolWithTile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBoolWithTile)))
  'GetBoolWithTile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoolWithTile)))
  "Returns string type for a service object of type '<GetBoolWithTile>"
  "std_srvs/GetBoolWithTile")