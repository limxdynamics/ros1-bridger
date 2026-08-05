; Auto-generated. Do not edit!


(cl:in-package limx_arm_msgs-msg)


;//! \htmlinclude ServoCmd.msg.html

(cl:defclass <ServoCmd> (roslisp-msg-protocol:ros-message)
  ((functionName
    :reader functionName
    :initarg :functionName
    :type cl:string
    :initform "")
   (left_arm_pos
    :reader left_arm_pos
    :initarg :left_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (right_arm_pos
    :reader right_arm_pos
    :initarg :right_arm_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ServoCmd (<ServoCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name limx_arm_msgs-msg:<ServoCmd> is deprecated: use limx_arm_msgs-msg:ServoCmd instead.")))

(cl:ensure-generic-function 'functionName-val :lambda-list '(m))
(cl:defmethod functionName-val ((m <ServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:functionName-val is deprecated.  Use limx_arm_msgs-msg:functionName instead.")
  (functionName m))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <ServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:left_arm_pos-val is deprecated.  Use limx_arm_msgs-msg:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <ServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader limx_arm_msgs-msg:right_arm_pos-val is deprecated.  Use limx_arm_msgs-msg:right_arm_pos instead.")
  (right_arm_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCmd>) ostream)
  "Serializes a message object of type '<ServoCmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'functionName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'functionName))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_arm_pos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_arm_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCmd>) istream)
  "Deserializes a message object of type '<ServoCmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'functionName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'functionName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'left_arm_pos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'left_arm_pos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'right_arm_pos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'right_arm_pos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCmd>)))
  "Returns string type for a message object of type '<ServoCmd>"
  "limx_arm_msgs/ServoCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCmd)))
  "Returns string type for a message object of type 'ServoCmd"
  "limx_arm_msgs/ServoCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCmd>)))
  "Returns md5sum for a message object of type '<ServoCmd>"
  "9baa32abc430b8109110d02971ccd3a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCmd)))
  "Returns md5sum for a message object of type 'ServoCmd"
  "9baa32abc430b8109110d02971ccd3a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCmd>)))
  "Returns full string definition for message of type '<ServoCmd>"
  (cl:format cl:nil "string functionName #servoL SetHeadPos~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] #servoL~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] #servoL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCmd)))
  "Returns full string definition for message of type 'ServoCmd"
  (cl:format cl:nil "string functionName #servoL SetHeadPos~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] #servoL~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] #servoL~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'functionName))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCmd
    (cl:cons ':functionName (functionName msg))
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
))
