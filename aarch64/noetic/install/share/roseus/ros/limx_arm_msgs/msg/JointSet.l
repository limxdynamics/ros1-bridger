;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::JointSet)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'JointSet (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::JOINTSET")
  (make-package "LIMX_ARM_MSGS::JOINTSET"))

(in-package "ROS")
;;//! \htmlinclude JointSet.msg.html


(intern "*ACTION_IDLE*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_IDLE* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_IDLE* 0)
(intern "*ACTION_START*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_START* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_START* 1)
(intern "*ACTION_PAUSE*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_PAUSE* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_PAUSE* 2)
(intern "*ACTION_RESUME*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_RESUME* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_RESUME* 3)
(intern "*ACTION_STOP*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_STOP* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_STOP* 4)
(intern "*ACTION_ENABLE_MOTOR*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_ENABLE_MOTOR* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_ENABLE_MOTOR* 5)
(intern "*ACTION_SET_ZERO*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_ZERO* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_ZERO* 6)
(intern "*ACTION_SET_LIMIT_MIN*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_LIMIT_MIN* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_LIMIT_MIN* 7)
(intern "*ACTION_SET_LIMIT_MAX*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_LIMIT_MAX* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_LIMIT_MAX* 8)
(intern "*ACTION_SET_POSITION*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_POSITION* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_POSITION* 9)
(intern "*ACTION_SET_MODE*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_MODE* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_MODE* 10)
(intern "*ACTION_SET_TOOL_SIZE*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_TOOL_SIZE* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_TOOL_SIZE* 11)
(intern "*ACTION_START_DRAG*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_START_DRAG* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_START_DRAG* 12)
(intern "*ACTION_STOP_DRAG*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_STOP_DRAG* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_STOP_DRAG* 13)
(intern "*ACTION_PLAYER_START*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_PLAYER_START* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_PLAYER_START* 14)
(intern "*ACTION_PLAYER_STOP*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_PLAYER_STOP* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_PLAYER_STOP* 15)
(intern "*ACTION_SET_CARTESIAN_POSITION*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*ACTION_SET_CARTESIAN_POSITION* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*ACTION_SET_CARTESIAN_POSITION* 16)
(intern "*MODE_ANGLE*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*MODE_ANGLE* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*MODE_ANGLE* 1)
(intern "*MODE_VELOCITY*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*MODE_VELOCITY* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*MODE_VELOCITY* 3)
(intern "*MODE_CURRENT*" (find-package "LIMX_ARM_MSGS::JOINTSET"))
(shadow '*MODE_CURRENT* (find-package "LIMX_ARM_MSGS::JOINTSET"))
(defconstant limx_arm_msgs::JointSet::*MODE_CURRENT* 4)

(defun limx_arm_msgs::JointSet-to-symbol (const)
  (cond
        ((= const 0) 'limx_arm_msgs::JointSet::*ACTION_IDLE*)
        ((= const 1) 'limx_arm_msgs::JointSet::*ACTION_START*)
        ((= const 2) 'limx_arm_msgs::JointSet::*ACTION_PAUSE*)
        ((= const 3) 'limx_arm_msgs::JointSet::*ACTION_RESUME*)
        ((= const 4) 'limx_arm_msgs::JointSet::*ACTION_STOP*)
        ((= const 5) 'limx_arm_msgs::JointSet::*ACTION_ENABLE_MOTOR*)
        ((= const 6) 'limx_arm_msgs::JointSet::*ACTION_SET_ZERO*)
        ((= const 7) 'limx_arm_msgs::JointSet::*ACTION_SET_LIMIT_MIN*)
        ((= const 8) 'limx_arm_msgs::JointSet::*ACTION_SET_LIMIT_MAX*)
        ((= const 9) 'limx_arm_msgs::JointSet::*ACTION_SET_POSITION*)
        ((= const 10) 'limx_arm_msgs::JointSet::*ACTION_SET_MODE*)
        ((= const 11) 'limx_arm_msgs::JointSet::*ACTION_SET_TOOL_SIZE*)
        ((= const 12) 'limx_arm_msgs::JointSet::*ACTION_START_DRAG*)
        ((= const 13) 'limx_arm_msgs::JointSet::*ACTION_STOP_DRAG*)
        ((= const 14) 'limx_arm_msgs::JointSet::*ACTION_PLAYER_START*)
        ((= const 15) 'limx_arm_msgs::JointSet::*ACTION_PLAYER_STOP*)
        ((= const 16) 'limx_arm_msgs::JointSet::*ACTION_SET_CARTESIAN_POSITION*)
        ((= const 1) 'limx_arm_msgs::JointSet::*MODE_ANGLE*)
        ((= const 3) 'limx_arm_msgs::JointSet::*MODE_VELOCITY*)
        ((= const 4) 'limx_arm_msgs::JointSet::*MODE_CURRENT*)
        (t nil)))

(defclass limx_arm_msgs::JointSet
  :super ros::object
  :slots (_stamp _deviceid _action _mode _data ))

(defmethod limx_arm_msgs::JointSet
  (:init
   (&key
    ((:stamp __stamp) 0)
    ((:deviceid __deviceid) "")
    ((:action __action) 0)
    ((:mode __mode) 0)
    ((:data __data) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp (round __stamp))
   (setq _deviceid (string __deviceid))
   (setq _action (round __action))
   (setq _mode (round __mode))
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:deviceid
   (&optional __deviceid)
   (if __deviceid (setq _deviceid __deviceid)) _deviceid)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int64 _stamp
    8
    ;; string _deviceid
    4 (length _deviceid)
    ;; int32 _action
    4
    ;; int32 _mode
    4
    ;; float32[6] _data
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _stamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _stamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _stamp) (= (length (_stamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_stamp . bv) 0) 0) s)
              (write-long (ash (elt (_stamp . bv) 1) -1) s))
             ((and (class _stamp) (= (length (_stamp . bv)) 1)) ;; big1
              (write-long (elt (_stamp . bv) 0) s)
              (write-long (if (>= _stamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _stamp s)(write-long (if (>= _stamp 0) 0 #xffffffff) s)))
     ;; string _deviceid
       (write-long (length _deviceid) s) (princ _deviceid s)
     ;; int32 _action
       (write-long _action s)
     ;; int32 _mode
       (write-long _mode s)
     ;; float32[6] _data
     (dotimes (i 6)
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _stamp
#+(or :alpha :irix6 :x86_64)
      (setf _stamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _stamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _deviceid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _deviceid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[6] _data
   (dotimes (i (length _data))
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get limx_arm_msgs::JointSet :md5sum-) "342a69737258a9dd1a3f1a350ffdea87")
(setf (get limx_arm_msgs::JointSet :datatype-) "limx_arm_msgs/JointSet")
(setf (get limx_arm_msgs::JointSet :definition-)
      "int64 stamp

string deviceid

# action
int32 ACTION_IDLE           = 0
int32 ACTION_START          = 1
int32 ACTION_PAUSE          = 2
int32 ACTION_RESUME         = 3
int32 ACTION_STOP           = 4
int32 ACTION_ENABLE_MOTOR   = 5
int32 ACTION_SET_ZERO       = 6
int32 ACTION_SET_LIMIT_MIN  = 7
int32 ACTION_SET_LIMIT_MAX  = 8
int32 ACTION_SET_POSITION   = 9
int32 ACTION_SET_MODE       = 10
int32 ACTION_SET_TOOL_SIZE  = 11
int32 ACTION_START_DRAG     = 12
int32 ACTION_STOP_DRAG      = 13
int32 ACTION_PLAYER_START   = 14
int32 ACTION_PLAYER_STOP    = 15
int32 ACTION_SET_CARTESIAN_POSITION = 16
int32 action

# 01位置控制，03速度模式，04电流模式 
int32 MODE_ANGLE    = 1
int32 MODE_VELOCITY = 3
int32 MODE_CURRENT  = 4
int32 mode

# data
float32[6] data

")



(provide :limx_arm_msgs/JointSet "342a69737258a9dd1a3f1a350ffdea87")


