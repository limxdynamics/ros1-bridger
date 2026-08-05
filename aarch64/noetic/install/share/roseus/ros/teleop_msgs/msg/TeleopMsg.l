;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopMsg)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopMsg (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPMSG")
  (make-package "TELEOP_MSGS::TELEOPMSG"))

(in-package "ROS")
;;//! \htmlinclude TeleopMsg.msg.html
(if (not (find-package "CONTROLLER_MSGS"))
  (ros::roseus-add-msgs "controller_msgs"))
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teleop_msgs::TeleopMsg
  :super ros::object
  :slots (_header _world _anchors _joint_cmd ))

(defmethod teleop_msgs::TeleopMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:world __world) (instance geometry_msgs::Pose :init))
    ((:anchors __anchors) ())
    ((:joint_cmd __joint_cmd) (instance controller_msgs::JointCmd :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _world __world)
   (setq _anchors __anchors)
   (setq _joint_cmd __joint_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:world
   (&rest __world)
   (if (keywordp (car __world))
       (send* _world __world)
     (progn
       (if __world (setq _world (car __world)))
       _world)))
  (:anchors
   (&rest __anchors)
   (if (keywordp (car __anchors))
       (send* _anchors __anchors)
     (progn
       (if __anchors (setq _anchors (car __anchors)))
       _anchors)))
  (:joint_cmd
   (&rest __joint_cmd)
   (if (keywordp (car __joint_cmd))
       (send* _joint_cmd __joint_cmd)
     (progn
       (if __joint_cmd (setq _joint_cmd (car __joint_cmd)))
       _joint_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _world
    (send _world :serialization-length)
    ;; teleop_msgs/KeyPoint[] _anchors
    (apply #'+ (send-all _anchors :serialization-length)) 4
    ;; controller_msgs/JointCmd _joint_cmd
    (send _joint_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _world
       (send _world :serialize s)
     ;; teleop_msgs/KeyPoint[] _anchors
     (write-long (length _anchors) s)
     (dolist (elem _anchors)
       (send elem :serialize s)
       )
     ;; controller_msgs/JointCmd _joint_cmd
       (send _joint_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _world
     (send _world :deserialize buf ptr-) (incf ptr- (send _world :serialization-length))
   ;; teleop_msgs/KeyPoint[] _anchors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _anchors (let (r) (dotimes (i n) (push (instance teleop_msgs::KeyPoint :init) r)) r))
     (dolist (elem- _anchors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; controller_msgs/JointCmd _joint_cmd
     (send _joint_cmd :deserialize buf ptr-) (incf ptr- (send _joint_cmd :serialization-length))
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopMsg :md5sum-) "d53df3708d33197543f8f10dd6767226")
(setf (get teleop_msgs::TeleopMsg :datatype-) "teleop_msgs/TeleopMsg")
(setf (get teleop_msgs::TeleopMsg :definition-)
      "std_msgs/Header header

geometry_msgs/Pose world

teleop_msgs/KeyPoint[] anchors

controller_msgs/JointCmd joint_cmd


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: teleop_msgs/KeyPoint
string name
geometry_msgs/Pose pose

================================================================================
MSG: controller_msgs/JointCmd
std_msgs/Header header

string[]  names
float32[] q
float32[] v
float32[] tau
float32[] kp
float32[] kd
uint8[] mode
uint32 na

")



(provide :teleop_msgs/TeleopMsg "d53df3708d33197543f8f10dd6767226")


