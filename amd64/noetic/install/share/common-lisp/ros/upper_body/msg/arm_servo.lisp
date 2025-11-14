; Auto-generated. Do not edit!


(cl:in-package upper_body-msg)


;//! \htmlinclude arm_servo.msg.html

(cl:defclass <arm_servo> (roslisp-msg-protocol:ros-message)
  ((servo_type
    :reader servo_type
    :initarg :servo_type
    :type cl:string
    :initform "")
   (left_arm_joints
    :reader left_arm_joints
    :initarg :left_arm_joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (right_arm_joints
    :reader right_arm_joints
    :initarg :right_arm_joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
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

(cl:defclass arm_servo (<arm_servo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_servo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_servo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-msg:<arm_servo> is deprecated: use upper_body-msg:arm_servo instead.")))

(cl:ensure-generic-function 'servo_type-val :lambda-list '(m))
(cl:defmethod servo_type-val ((m <arm_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:servo_type-val is deprecated.  Use upper_body-msg:servo_type instead.")
  (servo_type m))

(cl:ensure-generic-function 'left_arm_joints-val :lambda-list '(m))
(cl:defmethod left_arm_joints-val ((m <arm_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:left_arm_joints-val is deprecated.  Use upper_body-msg:left_arm_joints instead.")
  (left_arm_joints m))

(cl:ensure-generic-function 'right_arm_joints-val :lambda-list '(m))
(cl:defmethod right_arm_joints-val ((m <arm_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:right_arm_joints-val is deprecated.  Use upper_body-msg:right_arm_joints instead.")
  (right_arm_joints m))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <arm_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:left_arm_pos-val is deprecated.  Use upper_body-msg:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <arm_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:right_arm_pos-val is deprecated.  Use upper_body-msg:right_arm_pos instead.")
  (right_arm_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_servo>) ostream)
  "Serializes a message object of type '<arm_servo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left_arm_joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'left_arm_joints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right_arm_joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'right_arm_joints))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_servo>) istream)
  "Deserializes a message object of type '<arm_servo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'servo_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left_arm_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left_arm_joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right_arm_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right_arm_joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_servo>)))
  "Returns string type for a message object of type '<arm_servo>"
  "upper_body/arm_servo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_servo)))
  "Returns string type for a message object of type 'arm_servo"
  "upper_body/arm_servo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_servo>)))
  "Returns md5sum for a message object of type '<arm_servo>"
  "97e96a0b33437f001f2d5b69b43cfc77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_servo)))
  "Returns md5sum for a message object of type 'arm_servo"
  "97e96a0b33437f001f2d5b69b43cfc77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_servo>)))
  "Returns full string definition for message of type '<arm_servo>"
  (cl:format cl:nil "string servo_type # servoJ or servoP~%# servoJ~%float32[] left_arm_joints # unit: rad~%float32[] right_arm_joints # unit: rad~%# servoP~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_servo)))
  "Returns full string definition for message of type 'arm_servo"
  (cl:format cl:nil "string servo_type # servoJ or servoP~%# servoJ~%float32[] left_arm_joints # unit: rad~%float32[] right_arm_joints # unit: rad~%# servoP~%float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: mz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_servo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'servo_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_servo>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_servo
    (cl:cons ':servo_type (servo_type msg))
    (cl:cons ':left_arm_joints (left_arm_joints msg))
    (cl:cons ':right_arm_joints (right_arm_joints msg))
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
))
