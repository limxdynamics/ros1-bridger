; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetUint32ArrayWithTitle-request.msg.html

(cl:defclass <GetUint32ArrayWithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass GetUint32ArrayWithTitle-request (<GetUint32ArrayWithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint32ArrayWithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint32ArrayWithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint32ArrayWithTitle-request> is deprecated: use std_srvs-srv:GetUint32ArrayWithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <GetUint32ArrayWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint32ArrayWithTitle-request>) ostream)
  "Serializes a message object of type '<GetUint32ArrayWithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint32ArrayWithTitle-request>) istream)
  "Deserializes a message object of type '<GetUint32ArrayWithTitle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint32ArrayWithTitle-request>)))
  "Returns string type for a service object of type '<GetUint32ArrayWithTitle-request>"
  "std_srvs/GetUint32ArrayWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint32ArrayWithTitle-request)))
  "Returns string type for a service object of type 'GetUint32ArrayWithTitle-request"
  "std_srvs/GetUint32ArrayWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint32ArrayWithTitle-request>)))
  "Returns md5sum for a message object of type '<GetUint32ArrayWithTitle-request>"
  "539bb734f7c2fcc14d9583fba5503ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint32ArrayWithTitle-request)))
  "Returns md5sum for a message object of type 'GetUint32ArrayWithTitle-request"
  "539bb734f7c2fcc14d9583fba5503ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint32ArrayWithTitle-request>)))
  "Returns full string definition for message of type '<GetUint32ArrayWithTitle-request>"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint32ArrayWithTitle-request)))
  "Returns full string definition for message of type 'GetUint32ArrayWithTitle-request"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint32ArrayWithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint32ArrayWithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint32ArrayWithTitle-request
    (cl:cons ':title (title msg))
))
;//! \htmlinclude GetUint32ArrayWithTitle-response.msg.html

(cl:defclass <GetUint32ArrayWithTitle-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
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

(cl:defclass GetUint32ArrayWithTitle-response (<GetUint32ArrayWithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUint32ArrayWithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUint32ArrayWithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetUint32ArrayWithTitle-response> is deprecated: use std_srvs-srv:GetUint32ArrayWithTitle-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetUint32ArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetUint32ArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetUint32ArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUint32ArrayWithTitle-response>) ostream)
  "Serializes a message object of type '<GetUint32ArrayWithTitle-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUint32ArrayWithTitle-response>) istream)
  "Deserializes a message object of type '<GetUint32ArrayWithTitle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUint32ArrayWithTitle-response>)))
  "Returns string type for a service object of type '<GetUint32ArrayWithTitle-response>"
  "std_srvs/GetUint32ArrayWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint32ArrayWithTitle-response)))
  "Returns string type for a service object of type 'GetUint32ArrayWithTitle-response"
  "std_srvs/GetUint32ArrayWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUint32ArrayWithTitle-response>)))
  "Returns md5sum for a message object of type '<GetUint32ArrayWithTitle-response>"
  "539bb734f7c2fcc14d9583fba5503ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUint32ArrayWithTitle-response)))
  "Returns md5sum for a message object of type 'GetUint32ArrayWithTitle-response"
  "539bb734f7c2fcc14d9583fba5503ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUint32ArrayWithTitle-response>)))
  "Returns full string definition for message of type '<GetUint32ArrayWithTitle-response>"
  (cl:format cl:nil "uint32[]  data    # array of data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUint32ArrayWithTitle-response)))
  "Returns full string definition for message of type 'GetUint32ArrayWithTitle-response"
  (cl:format cl:nil "uint32[]  data    # array of data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUint32ArrayWithTitle-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUint32ArrayWithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUint32ArrayWithTitle-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUint32ArrayWithTitle)))
  'GetUint32ArrayWithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUint32ArrayWithTitle)))
  'GetUint32ArrayWithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUint32ArrayWithTitle)))
  "Returns string type for a service object of type '<GetUint32ArrayWithTitle>"
  "std_srvs/GetUint32ArrayWithTitle")