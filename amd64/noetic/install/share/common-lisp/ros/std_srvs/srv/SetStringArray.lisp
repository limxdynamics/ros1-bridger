; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetStringArray-request.msg.html

(cl:defclass <SetStringArray-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SetStringArray-request (<SetStringArray-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringArray-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringArray-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetStringArray-request> is deprecated: use std_srvs-srv:SetStringArray-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetStringArray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringArray-request>) ostream)
  "Serializes a message object of type '<SetStringArray-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringArray-request>) istream)
  "Deserializes a message object of type '<SetStringArray-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringArray-request>)))
  "Returns string type for a service object of type '<SetStringArray-request>"
  "std_srvs/SetStringArrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringArray-request)))
  "Returns string type for a service object of type 'SetStringArray-request"
  "std_srvs/SetStringArrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringArray-request>)))
  "Returns md5sum for a message object of type '<SetStringArray-request>"
  "1f446846928755f68919cab6862f6368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringArray-request)))
  "Returns md5sum for a message object of type 'SetStringArray-request"
  "1f446846928755f68919cab6862f6368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringArray-request>)))
  "Returns full string definition for message of type '<SetStringArray-request>"
  (cl:format cl:nil "string[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringArray-request)))
  "Returns full string definition for message of type 'SetStringArray-request"
  (cl:format cl:nil "string[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringArray-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringArray-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringArray-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetStringArray-response.msg.html

(cl:defclass <SetStringArray-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetStringArray-response (<SetStringArray-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringArray-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringArray-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetStringArray-response> is deprecated: use std_srvs-srv:SetStringArray-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetStringArray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetStringArray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringArray-response>) ostream)
  "Serializes a message object of type '<SetStringArray-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringArray-response>) istream)
  "Deserializes a message object of type '<SetStringArray-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringArray-response>)))
  "Returns string type for a service object of type '<SetStringArray-response>"
  "std_srvs/SetStringArrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringArray-response)))
  "Returns string type for a service object of type 'SetStringArray-response"
  "std_srvs/SetStringArrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringArray-response>)))
  "Returns md5sum for a message object of type '<SetStringArray-response>"
  "1f446846928755f68919cab6862f6368")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringArray-response)))
  "Returns md5sum for a message object of type 'SetStringArray-response"
  "1f446846928755f68919cab6862f6368")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringArray-response>)))
  "Returns full string definition for message of type '<SetStringArray-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringArray-response)))
  "Returns full string definition for message of type 'SetStringArray-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringArray-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringArray-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringArray-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetStringArray)))
  'SetStringArray-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetStringArray)))
  'SetStringArray-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringArray)))
  "Returns string type for a service object of type '<SetStringArray>"
  "std_srvs/SetStringArray")