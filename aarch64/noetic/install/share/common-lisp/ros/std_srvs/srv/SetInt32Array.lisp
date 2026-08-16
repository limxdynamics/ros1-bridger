; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetInt32Array-request.msg.html

(cl:defclass <SetInt32Array-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetInt32Array-request (<SetInt32Array-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt32Array-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt32Array-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetInt32Array-request> is deprecated: use std_srvs-srv:SetInt32Array-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetInt32Array-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt32Array-request>) ostream)
  "Serializes a message object of type '<SetInt32Array-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt32Array-request>) istream)
  "Deserializes a message object of type '<SetInt32Array-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt32Array-request>)))
  "Returns string type for a service object of type '<SetInt32Array-request>"
  "std_srvs/SetInt32ArrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt32Array-request)))
  "Returns string type for a service object of type 'SetInt32Array-request"
  "std_srvs/SetInt32ArrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt32Array-request>)))
  "Returns md5sum for a message object of type '<SetInt32Array-request>"
  "5465473c6af5f658a0ee6137d0f52c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt32Array-request)))
  "Returns md5sum for a message object of type 'SetInt32Array-request"
  "5465473c6af5f658a0ee6137d0f52c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt32Array-request>)))
  "Returns full string definition for message of type '<SetInt32Array-request>"
  (cl:format cl:nil "int32[]  data    # array of data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt32Array-request)))
  "Returns full string definition for message of type 'SetInt32Array-request"
  (cl:format cl:nil "int32[]  data    # array of data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt32Array-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt32Array-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt32Array-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetInt32Array-response.msg.html

(cl:defclass <SetInt32Array-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetInt32Array-response (<SetInt32Array-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt32Array-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt32Array-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetInt32Array-response> is deprecated: use std_srvs-srv:SetInt32Array-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetInt32Array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetInt32Array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt32Array-response>) ostream)
  "Serializes a message object of type '<SetInt32Array-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt32Array-response>) istream)
  "Deserializes a message object of type '<SetInt32Array-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt32Array-response>)))
  "Returns string type for a service object of type '<SetInt32Array-response>"
  "std_srvs/SetInt32ArrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt32Array-response)))
  "Returns string type for a service object of type 'SetInt32Array-response"
  "std_srvs/SetInt32ArrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt32Array-response>)))
  "Returns md5sum for a message object of type '<SetInt32Array-response>"
  "5465473c6af5f658a0ee6137d0f52c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt32Array-response)))
  "Returns md5sum for a message object of type 'SetInt32Array-response"
  "5465473c6af5f658a0ee6137d0f52c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt32Array-response>)))
  "Returns full string definition for message of type '<SetInt32Array-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt32Array-response)))
  "Returns full string definition for message of type 'SetInt32Array-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt32Array-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt32Array-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt32Array-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInt32Array)))
  'SetInt32Array-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInt32Array)))
  'SetInt32Array-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt32Array)))
  "Returns string type for a service object of type '<SetInt32Array>"
  "std_srvs/SetInt32Array")