; Auto-generated. Do not edit!


(cl:in-package upper_body-msg)


;//! \htmlinclude arm_status.msg.html

(cl:defclass <arm_status> (roslisp-msg-protocol:ros-message)
  ((left_arm_pos
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

(cl:defclass arm_status (<arm_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-msg:<arm_status> is deprecated: use upper_body-msg:arm_status instead.")))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <arm_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:left_arm_pos-val is deprecated.  Use upper_body-msg:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <arm_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:right_arm_pos-val is deprecated.  Use upper_body-msg:right_arm_pos instead.")
  (right_arm_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_status>) ostream)
  "Serializes a message object of type '<arm_status>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_status>) istream)
  "Deserializes a message object of type '<arm_status>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_status>)))
  "Returns string type for a message object of type '<arm_status>"
  "upper_body/arm_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_status)))
  "Returns string type for a message object of type 'arm_status"
  "upper_body/arm_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_status>)))
  "Returns md5sum for a message object of type '<arm_status>"
  "8e03a077af41c0b3cbb4b9fb7c5de204")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_status)))
  "Returns md5sum for a message object of type 'arm_status"
  "8e03a077af41c0b3cbb4b9fb7c5de204")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_status>)))
  "Returns full string definition for message of type '<arm_status>"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_status)))
  "Returns full string definition for message of type 'arm_status"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_status>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_status>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_status
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
))
