; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude SetUint32Array-request.msg.html

(cl:defclass <SetUint32Array-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass SetUint32Array-request (<SetUint32Array-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32Array-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32Array-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetUint32Array-request> is deprecated: use std_srvs-srv:SetUint32Array-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetUint32Array-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32Array-request>) ostream)
  "Serializes a message object of type '<SetUint32Array-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32Array-request>) istream)
  "Deserializes a message object of type '<SetUint32Array-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32Array-request>)))
  "Returns string type for a service object of type '<SetUint32Array-request>"
  "std_srvs/SetUint32ArrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32Array-request)))
  "Returns string type for a service object of type 'SetUint32Array-request"
  "std_srvs/SetUint32ArrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32Array-request>)))
  "Returns md5sum for a message object of type '<SetUint32Array-request>"
  "4587dc15de6ca63e475de8265ece26e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32Array-request)))
  "Returns md5sum for a message object of type 'SetUint32Array-request"
  "4587dc15de6ca63e475de8265ece26e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32Array-request>)))
  "Returns full string definition for message of type '<SetUint32Array-request>"
  (cl:format cl:nil "uint32[]  data    # array of data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32Array-request)))
  "Returns full string definition for message of type 'SetUint32Array-request"
  (cl:format cl:nil "uint32[]  data    # array of data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32Array-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32Array-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32Array-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetUint32Array-response.msg.html

(cl:defclass <SetUint32Array-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetUint32Array-response (<SetUint32Array-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32Array-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32Array-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<SetUint32Array-response> is deprecated: use std_srvs-srv:SetUint32Array-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUint32Array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetUint32Array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32Array-response>) ostream)
  "Serializes a message object of type '<SetUint32Array-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32Array-response>) istream)
  "Deserializes a message object of type '<SetUint32Array-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32Array-response>)))
  "Returns string type for a service object of type '<SetUint32Array-response>"
  "std_srvs/SetUint32ArrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32Array-response)))
  "Returns string type for a service object of type 'SetUint32Array-response"
  "std_srvs/SetUint32ArrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32Array-response>)))
  "Returns md5sum for a message object of type '<SetUint32Array-response>"
  "4587dc15de6ca63e475de8265ece26e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32Array-response)))
  "Returns md5sum for a message object of type 'SetUint32Array-response"
  "4587dc15de6ca63e475de8265ece26e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32Array-response>)))
  "Returns full string definition for message of type '<SetUint32Array-response>"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32Array-response)))
  "Returns full string definition for message of type 'SetUint32Array-response"
  (cl:format cl:nil "bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32Array-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32Array-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32Array-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUint32Array)))
  'SetUint32Array-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUint32Array)))
  'SetUint32Array-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32Array)))
  "Returns string type for a service object of type '<SetUint32Array>"
  "std_srvs/SetUint32Array")