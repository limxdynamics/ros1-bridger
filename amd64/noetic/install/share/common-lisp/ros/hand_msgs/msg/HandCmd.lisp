; Auto-generated. Do not edit!


(cl:in-package hand_msgs-msg)


;//! \htmlinclude HandCmd.msg.html

(cl:defclass <HandCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hand_type
    :reader hand_type
    :initarg :hand_type
    :type cl:string
    :initform "")
   (ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (hand_cmd
    :reader hand_cmd
    :initarg :hand_cmd
    :type (cl:vector hand_msgs-msg:HandMsg)
   :initform (cl:make-array 2 :element-type 'hand_msgs-msg:HandMsg :initial-element (cl:make-instance 'hand_msgs-msg:HandMsg))))
)

(cl:defclass HandCmd (<HandCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HandCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HandCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hand_msgs-msg:<HandCmd> is deprecated: use hand_msgs-msg:HandCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:header-val is deprecated.  Use hand_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hand_type-val :lambda-list '(m))
(cl:defmethod hand_type-val ((m <HandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:hand_type-val is deprecated.  Use hand_msgs-msg:hand_type instead.")
  (hand_type m))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <HandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:ctrl_mode-val is deprecated.  Use hand_msgs-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'hand_cmd-val :lambda-list '(m))
(cl:defmethod hand_cmd-val ((m <HandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hand_msgs-msg:hand_cmd-val is deprecated.  Use hand_msgs-msg:hand_cmd instead.")
  (hand_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HandCmd>) ostream)
  "Serializes a message object of type '<HandCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hand_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hand_type))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ctrl_mode))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'hand_cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HandCmd>) istream)
  "Deserializes a message object of type '<HandCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hand_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hand_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'ctrl_mode) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'ctrl_mode)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'hand_cmd) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'hand_cmd)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hand_msgs-msg:HandMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HandCmd>)))
  "Returns string type for a message object of type '<HandCmd>"
  "hand_msgs/HandCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HandCmd)))
  "Returns string type for a message object of type 'HandCmd"
  "hand_msgs/HandCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HandCmd>)))
  "Returns md5sum for a message object of type '<HandCmd>"
  "cc671eacc3dec085edca419077f5b87a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HandCmd)))
  "Returns md5sum for a message object of type 'HandCmd"
  "cc671eacc3dec085edca419077f5b87a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HandCmd>)))
  "Returns full string definition for message of type '<HandCmd>"
  (cl:format cl:nil "std_msgs/Header header~%string hand_type~%~%uint8[2] ctrl_mode~%~%HandMsg[2] hand_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hand_msgs/HandMsg~%std_msgs/Header header~%~%string[]  names~%float32[] pos~%float32[] vel~%float32[] current~%float32[] time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HandCmd)))
  "Returns full string definition for message of type 'HandCmd"
  (cl:format cl:nil "std_msgs/Header header~%string hand_type~%~%uint8[2] ctrl_mode~%~%HandMsg[2] hand_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hand_msgs/HandMsg~%std_msgs/Header header~%~%string[]  names~%float32[] pos~%float32[] vel~%float32[] current~%float32[] time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HandCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'hand_type))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ctrl_mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'hand_cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HandCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'HandCmd
    (cl:cons ':header (header msg))
    (cl:cons ':hand_type (hand_type msg))
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':hand_cmd (hand_cmd msg))
))
