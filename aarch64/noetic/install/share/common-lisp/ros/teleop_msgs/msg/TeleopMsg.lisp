; Auto-generated. Do not edit!


(cl:in-package teleop_msgs-msg)


;//! \htmlinclude TeleopMsg.msg.html

(cl:defclass <TeleopMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (world
    :reader world
    :initarg :world
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (anchors
    :reader anchors
    :initarg :anchors
    :type (cl:vector teleop_msgs-msg:KeyPoint)
   :initform (cl:make-array 0 :element-type 'teleop_msgs-msg:KeyPoint :initial-element (cl:make-instance 'teleop_msgs-msg:KeyPoint)))
   (joint_cmd
    :reader joint_cmd
    :initarg :joint_cmd
    :type controller_msgs-msg:JointCmd
    :initform (cl:make-instance 'controller_msgs-msg:JointCmd)))
)

(cl:defclass TeleopMsg (<TeleopMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeleopMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeleopMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teleop_msgs-msg:<TeleopMsg> is deprecated: use teleop_msgs-msg:TeleopMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TeleopMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:header-val is deprecated.  Use teleop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'world-val :lambda-list '(m))
(cl:defmethod world-val ((m <TeleopMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:world-val is deprecated.  Use teleop_msgs-msg:world instead.")
  (world m))

(cl:ensure-generic-function 'anchors-val :lambda-list '(m))
(cl:defmethod anchors-val ((m <TeleopMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:anchors-val is deprecated.  Use teleop_msgs-msg:anchors instead.")
  (anchors m))

(cl:ensure-generic-function 'joint_cmd-val :lambda-list '(m))
(cl:defmethod joint_cmd-val ((m <TeleopMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teleop_msgs-msg:joint_cmd-val is deprecated.  Use teleop_msgs-msg:joint_cmd instead.")
  (joint_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeleopMsg>) ostream)
  "Serializes a message object of type '<TeleopMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'anchors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'anchors))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeleopMsg>) istream)
  "Deserializes a message object of type '<TeleopMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'anchors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'anchors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teleop_msgs-msg:KeyPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeleopMsg>)))
  "Returns string type for a message object of type '<TeleopMsg>"
  "teleop_msgs/TeleopMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeleopMsg)))
  "Returns string type for a message object of type 'TeleopMsg"
  "teleop_msgs/TeleopMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeleopMsg>)))
  "Returns md5sum for a message object of type '<TeleopMsg>"
  "d53df3708d33197543f8f10dd6767226")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeleopMsg)))
  "Returns md5sum for a message object of type 'TeleopMsg"
  "d53df3708d33197543f8f10dd6767226")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeleopMsg>)))
  "Returns full string definition for message of type '<TeleopMsg>"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose world~%~%teleop_msgs/KeyPoint[] anchors~%~%controller_msgs/JointCmd joint_cmd~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: teleop_msgs/KeyPoint~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: controller_msgs/JointCmd~%std_msgs/Header header~%~%string[]  names~%float32[] q~%float32[] v~%float32[] tau~%float32[] kp~%float32[] kd~%uint8[] mode~%uint32 na~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeleopMsg)))
  "Returns full string definition for message of type 'TeleopMsg"
  (cl:format cl:nil "std_msgs/Header header~%~%geometry_msgs/Pose world~%~%teleop_msgs/KeyPoint[] anchors~%~%controller_msgs/JointCmd joint_cmd~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: teleop_msgs/KeyPoint~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: controller_msgs/JointCmd~%std_msgs/Header header~%~%string[]  names~%float32[] q~%float32[] v~%float32[] tau~%float32[] kp~%float32[] kd~%uint8[] mode~%uint32 na~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeleopMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'anchors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeleopMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TeleopMsg
    (cl:cons ':header (header msg))
    (cl:cons ':world (world msg))
    (cl:cons ':anchors (anchors msg))
    (cl:cons ':joint_cmd (joint_cmd msg))
))
