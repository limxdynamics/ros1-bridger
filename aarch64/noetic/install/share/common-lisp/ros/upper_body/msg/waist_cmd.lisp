; Auto-generated. Do not edit!


(cl:in-package upper_body-msg)


;//! \htmlinclude waist_cmd.msg.html

(cl:defclass <waist_cmd> (roslisp-msg-protocol:ros-message)
  ((waistCMD
    :reader waistCMD
    :initarg :waistCMD
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass waist_cmd (<waist_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waist_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waist_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name upper_body-msg:<waist_cmd> is deprecated: use upper_body-msg:waist_cmd instead.")))

(cl:ensure-generic-function 'waistCMD-val :lambda-list '(m))
(cl:defmethod waistCMD-val ((m <waist_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader upper_body-msg:waistCMD-val is deprecated.  Use upper_body-msg:waistCMD instead.")
  (waistCMD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waist_cmd>) ostream)
  "Serializes a message object of type '<waist_cmd>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'waistCMD))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waist_cmd>) istream)
  "Deserializes a message object of type '<waist_cmd>"
  (cl:setf (cl:slot-value msg 'waistCMD) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'waistCMD)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waist_cmd>)))
  "Returns string type for a message object of type '<waist_cmd>"
  "upper_body/waist_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waist_cmd)))
  "Returns string type for a message object of type 'waist_cmd"
  "upper_body/waist_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waist_cmd>)))
  "Returns md5sum for a message object of type '<waist_cmd>"
  "985c2e8a51e1fd1482af0d011eb5a7d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waist_cmd)))
  "Returns md5sum for a message object of type 'waist_cmd"
  "985c2e8a51e1fd1482af0d011eb5a7d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waist_cmd>)))
  "Returns full string definition for message of type '<waist_cmd>"
  (cl:format cl:nil "float32[3] waistCMD # [\"waist_yaw_joint\", \"waist_roll_joint\", \"waist_pitch_joint\"] units: rad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waist_cmd)))
  "Returns full string definition for message of type 'waist_cmd"
  (cl:format cl:nil "float32[3] waistCMD # [\"waist_yaw_joint\", \"waist_roll_joint\", \"waist_pitch_joint\"] units: rad~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waist_cmd>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'waistCMD) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waist_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'waist_cmd
    (cl:cons ':waistCMD (waistCMD msg))
))
