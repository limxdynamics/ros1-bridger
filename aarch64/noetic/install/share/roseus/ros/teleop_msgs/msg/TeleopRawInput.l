;; Auto-generated. Do not edit!


(when (boundp 'teleop_msgs::TeleopRawInput)
  (if (not (find-package "TELEOP_MSGS"))
    (make-package "TELEOP_MSGS"))
  (shadow 'TeleopRawInput (find-package "TELEOP_MSGS")))
(unless (find-package "TELEOP_MSGS::TELEOPRAWINPUT")
  (make-package "TELEOP_MSGS::TELEOPRAWINPUT"))

(in-package "ROS")
;;//! \htmlinclude TeleopRawInput.msg.html


(intern "*BTN_LEFT_X*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_X* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_X* 1)
(intern "*BTN_LEFT_Y*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_Y* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_Y* 2)
(intern "*BTN_RIGHT_A*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_A* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_A* 4)
(intern "*BTN_RIGHT_B*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_B* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_B* 8)
(intern "*BTN_LEFT_STICK*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_STICK* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_STICK* 16)
(intern "*BTN_RIGHT_STICK*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_STICK* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_STICK* 32)
(intern "*BTN_LEFT_GRIP*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_GRIP* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_GRIP* 64)
(intern "*BTN_RIGHT_GRIP*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_GRIP* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_GRIP* 128)
(intern "*BTN_LEFT_TRIGGER*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_TRIGGER* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_TRIGGER* 256)
(intern "*BTN_RIGHT_TRIGGER*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_TRIGGER* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_TRIGGER* 512)
(intern "*BTN_LEFT_THUMBREST*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_LEFT_THUMBREST* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_LEFT_THUMBREST* 1024)
(intern "*BTN_RIGHT_THUMBREST*" (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(shadow '*BTN_RIGHT_THUMBREST* (find-package "TELEOP_MSGS::TELEOPRAWINPUT"))
(defconstant teleop_msgs::TeleopRawInput::*BTN_RIGHT_THUMBREST* 2048)

(defun teleop_msgs::TeleopRawInput-to-symbol (const)
  (cond
        ((= const 1) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_X*)
        ((= const 2) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_Y*)
        ((= const 4) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_A*)
        ((= const 8) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_B*)
        ((= const 16) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_STICK*)
        ((= const 32) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_STICK*)
        ((= const 64) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_GRIP*)
        ((= const 128) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_GRIP*)
        ((= const 256) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_TRIGGER*)
        ((= const 512) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_TRIGGER*)
        ((= const 1024) 'teleop_msgs::TeleopRawInput::*BTN_LEFT_THUMBREST*)
        ((= const 2048) 'teleop_msgs::TeleopRawInput::*BTN_RIGHT_THUMBREST*)
        (t nil)))

(defclass teleop_msgs::TeleopRawInput
  :super ros::object
  :slots (_left_trigger _right_trigger _left_grip _right_grip _left_stick _right_stick _buttons _buttons_valid ))

(defmethod teleop_msgs::TeleopRawInput
  (:init
   (&key
    ((:left_trigger __left_trigger) 0.0)
    ((:right_trigger __right_trigger) 0.0)
    ((:left_grip __left_grip) 0.0)
    ((:right_grip __right_grip) 0.0)
    ((:left_stick __left_stick) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:right_stick __right_stick) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:buttons __buttons) 0)
    ((:buttons_valid __buttons_valid) 0)
    )
   (send-super :init)
   (setq _left_trigger (float __left_trigger))
   (setq _right_trigger (float __right_trigger))
   (setq _left_grip (float __left_grip))
   (setq _right_grip (float __right_grip))
   (setq _left_stick __left_stick)
   (setq _right_stick __right_stick)
   (setq _buttons (round __buttons))
   (setq _buttons_valid (round __buttons_valid))
   self)
  (:left_trigger
   (&optional __left_trigger)
   (if __left_trigger (setq _left_trigger __left_trigger)) _left_trigger)
  (:right_trigger
   (&optional __right_trigger)
   (if __right_trigger (setq _right_trigger __right_trigger)) _right_trigger)
  (:left_grip
   (&optional __left_grip)
   (if __left_grip (setq _left_grip __left_grip)) _left_grip)
  (:right_grip
   (&optional __right_grip)
   (if __right_grip (setq _right_grip __right_grip)) _right_grip)
  (:left_stick
   (&optional __left_stick)
   (if __left_stick (setq _left_stick __left_stick)) _left_stick)
  (:right_stick
   (&optional __right_stick)
   (if __right_stick (setq _right_stick __right_stick)) _right_stick)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:buttons_valid
   (&optional __buttons_valid)
   (if __buttons_valid (setq _buttons_valid __buttons_valid)) _buttons_valid)
  (:serialization-length
   ()
   (+
    ;; float32 _left_trigger
    4
    ;; float32 _right_trigger
    4
    ;; float32 _left_grip
    4
    ;; float32 _right_grip
    4
    ;; float32[2] _left_stick
    (* 4    2)
    ;; float32[2] _right_stick
    (* 4    2)
    ;; uint32 _buttons
    4
    ;; uint32 _buttons_valid
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_trigger
       (sys::poke _left_trigger (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_trigger
       (sys::poke _right_trigger (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_grip
       (sys::poke _left_grip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_grip
       (sys::poke _right_grip (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[2] _left_stick
     (dotimes (i 2)
       (sys::poke (elt _left_stick i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _right_stick
     (dotimes (i 2)
       (sys::poke (elt _right_stick i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _buttons
       (write-long _buttons s)
     ;; uint32 _buttons_valid
       (write-long _buttons_valid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_trigger
     (setq _left_trigger (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_trigger
     (setq _right_trigger (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_grip
     (setq _left_grip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_grip
     (setq _right_grip (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[2] _left_stick
   (dotimes (i (length _left_stick))
     (setf (elt _left_stick i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _right_stick
   (dotimes (i (length _right_stick))
     (setf (elt _right_stick i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32 _buttons
     (setq _buttons (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _buttons_valid
     (setq _buttons_valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get teleop_msgs::TeleopRawInput :md5sum-) "681b645c832574afd3efcab58e686b87")
(setf (get teleop_msgs::TeleopRawInput :datatype-) "teleop_msgs/TeleopRawInput")
(setf (get teleop_msgs::TeleopRawInput :definition-)
      "# 操作者控制器的原始输入量。
# 发送方不解释任何按键含义，组合键语义一律由接收方解释。

# 模拟量，范围 0.0 ~ 1.0
float32 left_trigger
float32 right_trigger
float32 left_grip
float32 right_grip

# 摇杆，[x, y]，范围 -1.0 ~ 1.0
float32[2] left_stick
float32[2] right_stick

# 按键位掩码。预留高位，新增按键不需要改本消息。
uint32 BTN_LEFT_X=1
uint32 BTN_LEFT_Y=2
uint32 BTN_RIGHT_A=4
uint32 BTN_RIGHT_B=8
uint32 BTN_LEFT_STICK=16         # 左摇杆按下
uint32 BTN_RIGHT_STICK=32        # 右摇杆按下
uint32 BTN_LEFT_GRIP=64          # 左 Grip 的布尔态
uint32 BTN_RIGHT_GRIP=128        # 右 Grip 的布尔态
uint32 BTN_LEFT_TRIGGER=256      # 左扳机的布尔态
uint32 BTN_RIGHT_TRIGGER=512     # 右扳机的布尔态
uint32 BTN_LEFT_THUMBREST=1024
uint32 BTN_RIGHT_THUMBREST=2048
uint32 buttons

# 哪些按键位本帧有效。设备不提供的按键，对应位为 0。
# 接收方不得把「设备未提供」当成「按键未按下」。
uint32 buttons_valid

")



(provide :teleop_msgs/TeleopRawInput "681b645c832574afd3efcab58e686b87")


