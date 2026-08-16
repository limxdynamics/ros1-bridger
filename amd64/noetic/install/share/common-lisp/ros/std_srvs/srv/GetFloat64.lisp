; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetFloat64-request.msg.html

(cl:defclass <GetFloat64-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFloat64-request (<GetFloat64-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloat64-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloat64-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetFloat64-request> is deprecated: use std_srvs-srv:GetFloat64-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloat64-request>) ostream)
  "Serializes a message object of type '<GetFloat64-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloat64-request>) istream)
  "Deserializes a message object of type '<GetFloat64-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloat64-request>)))
  "Returns string type for a service object of type '<GetFloat64-request>"
  "std_srvs/GetFloat64Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64-request)))
  "Returns string type for a service object of type 'GetFloat64-request"
  "std_srvs/GetFloat64Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloat64-request>)))
  "Returns md5sum for a message object of type '<GetFloat64-request>"
  "438b39d7999aa4b25db9b49336da31bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloat64-request)))
  "Returns md5sum for a message object of type 'GetFloat64-request"
  "438b39d7999aa4b25db9b49336da31bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloat64-request>)))
  "Returns full string definition for message of type '<GetFloat64-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloat64-request)))
  "Returns full string definition for message of type 'GetFloat64-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloat64-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloat64-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloat64-request
))
;//! \htmlinclude GetFloat64-response.msg.html

(cl:defclass <GetFloat64-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetFloat64-response (<GetFloat64-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloat64-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloat64-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetFloat64-response> is deprecated: use std_srvs-srv:GetFloat64-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetFloat64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetFloat64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetFloat64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloat64-response>) ostream)
  "Serializes a message object of type '<GetFloat64-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloat64-response>) istream)
  "Deserializes a message object of type '<GetFloat64-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloat64-response>)))
  "Returns string type for a service object of type '<GetFloat64-response>"
  "std_srvs/GetFloat64Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64-response)))
  "Returns string type for a service object of type 'GetFloat64-response"
  "std_srvs/GetFloat64Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloat64-response>)))
  "Returns md5sum for a message object of type '<GetFloat64-response>"
  "438b39d7999aa4b25db9b49336da31bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloat64-response)))
  "Returns md5sum for a message object of type 'GetFloat64-response"
  "438b39d7999aa4b25db9b49336da31bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloat64-response>)))
  "Returns full string definition for message of type '<GetFloat64-response>"
  (cl:format cl:nil "bool success # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%float64 data # data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloat64-response)))
  "Returns full string definition for message of type 'GetFloat64-response"
  (cl:format cl:nil "bool success # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%float64 data # data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloat64-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloat64-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloat64-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFloat64)))
  'GetFloat64-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFloat64)))
  'GetFloat64-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64)))
  "Returns string type for a service object of type '<GetFloat64>"
  "std_srvs/GetFloat64")