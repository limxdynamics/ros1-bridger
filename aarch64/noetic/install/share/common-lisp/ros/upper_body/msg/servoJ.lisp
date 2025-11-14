; Auto-generated. Do not edit!


(cl:in-package upper_body-msg)


;//! \htmlinclude servoJ.msg.html

(cl:defclass <servoJ> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass servoJ (<servoJ>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servoJ>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servoJ)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-msg:<servoJ> is deprecated: use upper_body-msg:servoJ instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <servoJ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:joints-val is deprecated.  Use upper_body-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servoJ>) ostream)
  "Serializes a message object of type '<servoJ>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servoJ>) istream)
  "Deserializes a message object of type '<servoJ>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servoJ>)))
  "Returns string type for a message object of type '<servoJ>"
  "upper_body/servoJ")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servoJ)))
  "Returns string type for a message object of type 'servoJ"
  "upper_body/servoJ")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servoJ>)))
  "Returns md5sum for a message object of type '<servoJ>"
  "e2a0e438b445b98def0f0ba6a2a85f58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servoJ)))
  "Returns md5sum for a message object of type 'servoJ"
  "e2a0e438b445b98def0f0ba6a2a85f58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servoJ>)))
  "Returns full string definition for message of type '<servoJ>"
  (cl:format cl:nil "float32[] joints # unit: rad~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servoJ)))
  "Returns full string definition for message of type 'servoJ"
  (cl:format cl:nil "float32[] joints # unit: rad~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servoJ>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servoJ>))
  "Converts a ROS message object to a list"
  (cl:list 'servoJ
    (cl:cons ':joints (joints msg))
))
