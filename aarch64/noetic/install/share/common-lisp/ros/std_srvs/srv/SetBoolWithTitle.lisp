; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetBoolWithTitle-request.msg.html

(cl:defclass <SetBoolWithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetBoolWithTitle-request (<SetBoolWithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBoolWithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBoolWithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetBoolWithTitle-request> is deprecated: use std_srvs-srv:SetBoolWithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <SetBoolWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetBoolWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBoolWithTitle-request>) ostream)
  "Serializes a message object of type '<SetBoolWithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBoolWithTitle-request>) istream)
  "Deserializes a message object of type '<SetBoolWithTitle-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBoolWithTitle-request>)))
  "Returns string type for a service object of type '<SetBoolWithTitle-request>"
  "std_srvs/SetBoolWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoolWithTitle-request)))
  "Returns string type for a service object of type 'SetBoolWithTitle-request"
  "std_srvs/SetBoolWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBoolWithTitle-request>)))
  "Returns md5sum for a message object of type '<SetBoolWithTitle-request>"
  "13c1605af28e84338a7c682325a34ac2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBoolWithTitle-request)))
  "Returns md5sum for a message object of type 'SetBoolWithTitle-request"
  "13c1605af28e84338a7c682325a34ac2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBoolWithTitle-request>)))
  "Returns full string definition for message of type '<SetBoolWithTitle-request>"
  (cl:format cl:nil "string title~%~%bool data # e.g. for hardware enabling / disabling~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBoolWithTitle-request)))
  "Returns full string definition for message of type 'SetBoolWithTitle-request"
  (cl:format cl:nil "string title~%~%bool data # e.g. for hardware enabling / disabling~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBoolWithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBoolWithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBoolWithTitle-request
    (cl:cons ':title (title msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetBoolWithTitle-response.msg.html

(cl:defclass <SetBoolWithTitle-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetBoolWithTitle-response (<SetBoolWithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBoolWithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBoolWithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetBoolWithTitle-response> is deprecated: use std_srvs-srv:SetBoolWithTitle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetBoolWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetBoolWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBoolWithTitle-response>) ostream)
  "Serializes a message object of type '<SetBoolWithTitle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBoolWithTitle-response>) istream)
  "Deserializes a message object of type '<SetBoolWithTitle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBoolWithTitle-response>)))
  "Returns string type for a service object of type '<SetBoolWithTitle-response>"
  "std_srvs/SetBoolWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoolWithTitle-response)))
  "Returns string type for a service object of type 'SetBoolWithTitle-response"
  "std_srvs/SetBoolWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBoolWithTitle-response>)))
  "Returns md5sum for a message object of type '<SetBoolWithTitle-response>"
  "13c1605af28e84338a7c682325a34ac2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBoolWithTitle-response)))
  "Returns md5sum for a message object of type 'SetBoolWithTitle-response"
  "13c1605af28e84338a7c682325a34ac2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBoolWithTitle-response>)))
  "Returns full string definition for message of type '<SetBoolWithTitle-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBoolWithTitle-response)))
  "Returns full string definition for message of type 'SetBoolWithTitle-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBoolWithTitle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBoolWithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBoolWithTitle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBoolWithTitle)))
  'SetBoolWithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBoolWithTitle)))
  'SetBoolWithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBoolWithTitle)))
  "Returns string type for a service object of type '<SetBoolWithTitle>"
  "std_srvs/SetBoolWithTitle")