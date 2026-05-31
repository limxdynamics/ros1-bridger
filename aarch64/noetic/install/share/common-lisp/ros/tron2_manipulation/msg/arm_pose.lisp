; Auto-generated. Do not edit!


(cl:in-package tron2_manipulation-msg)


;//! \htmlinclude arm_pose.msg.html

(cl:defclass <arm_pose> (roslisp-msg-protocol:ros-message)
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

(cl:defclass arm_pose (<arm_pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tron2_manipulation-msg:<arm_pose> is deprecated: use tron2_manipulation-msg:arm_pose instead.")))

(cl:ensure-generic-function 'left_arm_pos-val :lambda-list '(m))
(cl:defmethod left_arm_pos-val ((m <arm_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-msg:left_arm_pos-val is deprecated.  Use tron2_manipulation-msg:left_arm_pos instead.")
  (left_arm_pos m))

(cl:ensure-generic-function 'right_arm_pos-val :lambda-list '(m))
(cl:defmethod right_arm_pos-val ((m <arm_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tron2_manipulation-msg:right_arm_pos-val is deprecated.  Use tron2_manipulation-msg:right_arm_pos instead.")
  (right_arm_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_pose>) ostream)
  "Serializes a message object of type '<arm_pose>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_pose>) istream)
  "Deserializes a message object of type '<arm_pose>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_pose>)))
  "Returns string type for a message object of type '<arm_pose>"
  "tron2_manipulation/arm_pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_pose)))
  "Returns string type for a message object of type 'arm_pose"
  "tron2_manipulation/arm_pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_pose>)))
  "Returns md5sum for a message object of type '<arm_pose>"
  "8e03a077af41c0b3cbb4b9fb7c5de204")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_pose)))
  "Returns md5sum for a message object of type 'arm_pose"
  "8e03a077af41c0b3cbb4b9fb7c5de204")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_pose>)))
  "Returns full string definition for message of type '<arm_pose>"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_pose)))
  "Returns full string definition for message of type 'arm_pose"
  (cl:format cl:nil "float32[7] left_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%float32[7] right_arm_pos # [px py pz Qx Qy Qz Qw] unit: m~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_pose>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'left_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'right_arm_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_pose>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_pose
    (cl:cons ':left_arm_pos (left_arm_pos msg))
    (cl:cons ':right_arm_pos (right_arm_pos msg))
))
