;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopTarget)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopTarget (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPTARGET")
  (make-package "TELEOP_MSGS::TELEOPTARGET"))

(in-package "ROS")
;;//! \htmlinclude TeleopTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*VALIDITY_INVALID*" (find-package "TELEOP_MSGS::TELEOPTARGET"))
(shadow '*VALIDITY_INVALID* (find-package "TELEOP_MSGS::TELEOPTARGET"))
(defconstant teleop_msgs::TeleopTarget::*VALIDITY_INVALID* 0)
(intern "*VALIDITY_VALID*" (find-package "TELEOP_MSGS::TELEOPTARGET"))
(shadow '*VALIDITY_VALID* (find-package "TELEOP_MSGS::TELEOPTARGET"))
(defconstant teleop_msgs::TeleopTarget::*VALIDITY_VALID* 1)
(intern "*VALIDITY_STALE*" (find-package "TELEOP_MSGS::TELEOPTARGET"))
(shadow '*VALIDITY_STALE* (find-package "TELEOP_MSGS::TELEOPTARGET"))
(defconstant teleop_msgs::TeleopTarget::*VALIDITY_STALE* 2)
(intern "*VALIDITY_EXTRAPOLATED*" (find-package "TELEOP_MSGS::TELEOPTARGET"))
(shadow '*VALIDITY_EXTRAPOLATED* (find-package "TELEOP_MSGS::TELEOPTARGET"))
(defconstant teleop_msgs::TeleopTarget::*VALIDITY_EXTRAPOLATED* 3)

(defun teleop_msgs::TeleopTarget-to-symbol (const)
  (cond
        ((= const 0) 'teleop_msgs::TeleopTarget::*VALIDITY_INVALID*)
        ((= const 1) 'teleop_msgs::TeleopTarget::*VALIDITY_VALID*)
        ((= const 2) 'teleop_msgs::TeleopTarget::*VALIDITY_STALE*)
        ((= const 3) 'teleop_msgs::TeleopTarget::*VALIDITY_EXTRAPOLATED*)
        (t nil)))

(defclass teleop_msgs::TeleopTarget
  :super ros::object
  :slots (_name _pose _validity _source_stamp ))

(defmethod teleop_msgs::TeleopTarget
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:validity __validity) 0)
    ((:source_stamp __source_stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   (setq _validity (round __validity))
   (setq _source_stamp __source_stamp)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:validity
   (&optional __validity)
   (if __validity (setq _validity __validity)) _validity)
  (:source_stamp
   (&optional __source_stamp)
   (if __source_stamp (setq _source_stamp __source_stamp)) _source_stamp)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint8 _validity
    1
    ;; time _source_stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint8 _validity
       (write-byte _validity s)
     ;; time _source_stamp
       (write-long (send _source_stamp :sec) s) (write-long (send _source_stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _validity
     (setq _validity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _source_stamp
     (send _source_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _source_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopTarget :md5sum-) "07cc223d3f4368b67d350d5620e9bced")
(setf (get teleop_msgs::TeleopTarget :datatype-) "teleop_msgs/TeleopTarget")
(setf (get teleop_msgs::TeleopTarget :definition-)
      "# 遥操作中的单个跟踪目标（末端、头、躯干、足等）。
# 作为 TeleopIntentFrame.targets 的元素使用。

# 目标名。约定值：left_hand / right_hand / head / torso / base /
# left_foot / right_foot / left_wrist / right_wrist。
# 新增跟踪目标只需约定新名字，不需要改本消息。
string name

# 目标位姿。参考系由 TeleopIntentFrame.reference_frame 指定。
geometry_msgs/Pose pose

# 数据可信度。接收方据此决定跟随、降级还是忽略。
uint8 VALIDITY_INVALID=0       # 非法，接收方必须忽略
uint8 VALIDITY_VALID=1         # 新鲜可用
uint8 VALIDITY_STALE=2         # 有数据但已超期
uint8 VALIDITY_EXTRAPOLATED=3  # 由外推得到，非实测
uint8 validity

# 该目标数据的采集时刻。与帧组装时刻（header.stamp）可能不同，
# 接收方据此判断单个目标的新鲜度。
time source_stamp

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

")



(provide :teleop_msgs/TeleopTarget "07cc223d3f4368b67d350d5620e9bced")


