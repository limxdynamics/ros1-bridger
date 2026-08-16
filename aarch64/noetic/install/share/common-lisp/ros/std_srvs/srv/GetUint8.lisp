; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetUint8-request.msg.html

(cl:defclass <GetUint8-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUint8-request (<GetUint8-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint8-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint8-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint8-request> is deprecated: use std_srvs-srv:GetUint8-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint8-request>) ostream)
  "Serializes a message object of type '<GetUint8-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint8-request>) istream)
  "Deserializes a message object of type '<GetUint8-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint8-request>)))
  "Returns string type for a service object of type '<GetUint8-request>"
  "std_srvs/GetUint8Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8-request)))
  "Returns string type for a service object of type 'GetUint8-request"
  "std_srvs/GetUint8Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint8-request>)))
  "Returns md5sum for a message object of type '<GetUint8-request>"
  "0f686f75bf96e8287296bec2f13b20ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint8-request)))
  "Returns md5sum for a message object of type 'GetUint8-request"
  "0f686f75bf96e8287296bec2f13b20ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint8-request>)))
  "Returns full string definition for message of type '<GetUint8-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint8-request)))
  "Returns full string definition for message of type 'GetUint8-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint8-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint8-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint8-request
))
;//! \htmlinclude GetUint8-response.msg.html

(cl:defclass <GetUint8-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetUint8-response (<GetUint8-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint8-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint8-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint8-response> is deprecated: use std_srvs-srv:GetUint8-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetUint8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetUint8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetUint8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint8-response>) ostream)
  "Serializes a message object of type '<GetUint8-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint8-response>) istream)
  "Deserializes a message object of type '<GetUint8-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint8-response>)))
  "Returns string type for a service object of type '<GetUint8-response>"
  "std_srvs/GetUint8Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8-response)))
  "Returns string type for a service object of type 'GetUint8-response"
  "std_srvs/GetUint8Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint8-response>)))
  "Returns md5sum for a message object of type '<GetUint8-response>"
  "0f686f75bf96e8287296bec2f13b20ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint8-response)))
  "Returns md5sum for a message object of type 'GetUint8-response"
  "0f686f75bf96e8287296bec2f13b20ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint8-response>)))
  "Returns full string definition for message of type '<GetUint8-response>"
  (cl:format cl:nil "uint8 data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint8-response)))
  "Returns full string definition for message of type 'GetUint8-response"
  (cl:format cl:nil "uint8 data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint8-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint8-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint8-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUint8)))
  'GetUint8-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUint8)))
  'GetUint8-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint8)))
  "Returns string type for a service object of type '<GetUint8>"
  "std_srvs/GetUint8")