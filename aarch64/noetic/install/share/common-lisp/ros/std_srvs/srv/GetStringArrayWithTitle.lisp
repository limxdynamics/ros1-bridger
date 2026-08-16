; Auto-generated. Do not edit!


(cl:in-package std_srvs-srv)


;//! \htmlinclude GetStringArrayWithTitle-request.msg.html

(cl:defclass <GetStringArrayWithTitle-request> (roslisp-msg-protocol:ros-message)
  ((title
    :reader title
    :initarg :title
    :type cl:string
    :initform ""))
)

(cl:defclass GetStringArrayWithTitle-request (<GetStringArrayWithTitle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringArrayWithTitle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringArrayWithTitle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetStringArrayWithTitle-request> is deprecated: use std_srvs-srv:GetStringArrayWithTitle-request instead.")))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <GetStringArrayWithTitle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:title-val is deprecated.  Use std_srvs-srv:title instead.")
  (title m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringArrayWithTitle-request>) ostream)
  "Serializes a message object of type '<GetStringArrayWithTitle-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringArrayWithTitle-request>) istream)
  "Deserializes a message object of type '<GetStringArrayWithTitle-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringArrayWithTitle-request>)))
  "Returns string type for a service object of type '<GetStringArrayWithTitle-request>"
  "std_srvs/GetStringArrayWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringArrayWithTitle-request)))
  "Returns string type for a service object of type 'GetStringArrayWithTitle-request"
  "std_srvs/GetStringArrayWithTitleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringArrayWithTitle-request>)))
  "Returns md5sum for a message object of type '<GetStringArrayWithTitle-request>"
  "bb72c643575c1e3ad2b1ece3bf121925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringArrayWithTitle-request)))
  "Returns md5sum for a message object of type 'GetStringArrayWithTitle-request"
  "bb72c643575c1e3ad2b1ece3bf121925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringArrayWithTitle-request>)))
  "Returns full string definition for message of type '<GetStringArrayWithTitle-request>"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringArrayWithTitle-request)))
  "Returns full string definition for message of type 'GetStringArrayWithTitle-request"
  (cl:format cl:nil "string title~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringArrayWithTitle-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'title))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringArrayWithTitle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringArrayWithTitle-request
    (cl:cons ':title (title msg))
))
;//! \htmlinclude GetStringArrayWithTitle-response.msg.html

(cl:defclass <GetStringArrayWithTitle-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
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

(cl:defclass GetStringArrayWithTitle-response (<GetStringArrayWithTitle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStringArrayWithTitle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStringArrayWithTitle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_srvs-srv:<GetStringArrayWithTitle-response> is deprecated: use std_srvs-srv:GetStringArrayWithTitle-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetStringArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:data-val is deprecated.  Use std_srvs-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetStringArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:success-val is deprecated.  Use std_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetStringArrayWithTitle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_srvs-srv:message-val is deprecated.  Use std_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStringArrayWithTitle-response>) ostream)
  "Serializes a message object of type '<GetStringArrayWithTitle-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStringArrayWithTitle-response>) istream)
  "Deserializes a message object of type '<GetStringArrayWithTitle-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStringArrayWithTitle-response>)))
  "Returns string type for a service object of type '<GetStringArrayWithTitle-response>"
  "std_srvs/GetStringArrayWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringArrayWithTitle-response)))
  "Returns string type for a service object of type 'GetStringArrayWithTitle-response"
  "std_srvs/GetStringArrayWithTitleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStringArrayWithTitle-response>)))
  "Returns md5sum for a message object of type '<GetStringArrayWithTitle-response>"
  "bb72c643575c1e3ad2b1ece3bf121925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStringArrayWithTitle-response)))
  "Returns md5sum for a message object of type 'GetStringArrayWithTitle-response"
  "bb72c643575c1e3ad2b1ece3bf121925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStringArrayWithTitle-response>)))
  "Returns full string definition for message of type '<GetStringArrayWithTitle-response>"
  (cl:format cl:nil "string[] data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStringArrayWithTitle-response)))
  "Returns full string definition for message of type 'GetStringArrayWithTitle-response"
  (cl:format cl:nil "string[] data~%bool success   # indicate successful run of triggered service~%string message # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStringArrayWithTitle-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStringArrayWithTitle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStringArrayWithTitle-response
    (cl:cons ':data (data msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStringArrayWithTitle)))
  'GetStringArrayWithTitle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStringArrayWithTitle)))
  'GetStringArrayWithTitle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStringArrayWithTitle)))
  "Returns string type for a service object of type '<GetStringArrayWithTitle>"
  "std_srvs/GetStringArrayWithTitle")