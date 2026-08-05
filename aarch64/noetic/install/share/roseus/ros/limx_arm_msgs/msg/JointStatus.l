;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::JointStatus)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'JointStatus (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::JOINTSTATUS")
  (make-package "LIMX_ARM_MSGS::JOINTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude JointStatus.msg.html


(intern "*MODE_ANGLE*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*MODE_ANGLE* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*MODE_ANGLE* 1)
(intern "*MODE_VELOCITY*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*MODE_VELOCITY* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*MODE_VELOCITY* 3)
(intern "*MODE_CURRENT*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*MODE_CURRENT* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*MODE_CURRENT* 4)
(intern "*STATE_IDLE*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_IDLE* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_IDLE* 1)
(intern "*STATE_STARTED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_STARTED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_STARTED* 2)
(intern "*STATE_PAUSED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_PAUSED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_PAUSED* 3)
(intern "*STATE_RESUMED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_RESUMED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_RESUMED* 4)
(intern "*STATE_STOPED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_STOPED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_STOPED* 5)
(intern "*STATE_SHUTDOWN*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*STATE_SHUTDOWN* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*STATE_SHUTDOWN* 6)
(intern "*PLAY_STATE_IDLE*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*PLAY_STATE_IDLE* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*PLAY_STATE_IDLE* 0)
(intern "*PLAY_STATE_STARTED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*PLAY_STATE_STARTED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*PLAY_STATE_STARTED* 1)
(intern "*PLAY_STATE_FAILED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*PLAY_STATE_FAILED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*PLAY_STATE_FAILED* 2)
(intern "*PLAY_STATE_FINISHED*" (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(shadow '*PLAY_STATE_FINISHED* (find-package "LIMX_ARM_MSGS::JOINTSTATUS"))
(defconstant limx_arm_msgs::JointStatus::*PLAY_STATE_FINISHED* 3)

(defun limx_arm_msgs::JointStatus-to-symbol (const)
  (cond
        ((= const 1) 'limx_arm_msgs::JointStatus::*MODE_ANGLE*)
        ((= const 3) 'limx_arm_msgs::JointStatus::*MODE_VELOCITY*)
        ((= const 4) 'limx_arm_msgs::JointStatus::*MODE_CURRENT*)
        ((= const 1) 'limx_arm_msgs::JointStatus::*STATE_IDLE*)
        ((= const 2) 'limx_arm_msgs::JointStatus::*STATE_STARTED*)
        ((= const 3) 'limx_arm_msgs::JointStatus::*STATE_PAUSED*)
        ((= const 4) 'limx_arm_msgs::JointStatus::*STATE_RESUMED*)
        ((= const 5) 'limx_arm_msgs::JointStatus::*STATE_STOPED*)
        ((= const 6) 'limx_arm_msgs::JointStatus::*STATE_SHUTDOWN*)
        ((= const 0) 'limx_arm_msgs::JointStatus::*PLAY_STATE_IDLE*)
        ((= const 1) 'limx_arm_msgs::JointStatus::*PLAY_STATE_STARTED*)
        ((= const 2) 'limx_arm_msgs::JointStatus::*PLAY_STATE_FAILED*)
        ((= const 3) 'limx_arm_msgs::JointStatus::*PLAY_STATE_FINISHED*)
        (t nil)))

(defclass limx_arm_msgs::JointStatus
  :super ros::object
  :slots (_stamp _deviceid _run_time _enable _error _zero _limit_min _limit_max _tool_size _mode _state _play_state _log_path ))

(defmethod limx_arm_msgs::JointStatus
  (:init
   (&key
    ((:stamp __stamp) 0)
    ((:deviceid __deviceid) "")
    ((:run_time __run_time) 0)
    ((:enable __enable) (make-array 6 :initial-element 0 :element-type :integer))
    ((:error __error) (let (r) (dotimes (i 6) (push "" r)) r))
    ((:zero __zero) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:limit_min __limit_min) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:limit_max __limit_max) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:tool_size __tool_size) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:mode __mode) 0)
    ((:state __state) 0)
    ((:play_state __play_state) 0)
    ((:log_path __log_path) "")
    )
   (send-super :init)
   (setq _stamp (round __stamp))
   (setq _deviceid (string __deviceid))
   (setq _run_time (round __run_time))
   (setq _enable __enable)
   (setq _error __error)
   (setq _zero __zero)
   (setq _limit_min __limit_min)
   (setq _limit_max __limit_max)
   (setq _tool_size __tool_size)
   (setq _mode (round __mode))
   (setq _state (round __state))
   (setq _play_state (round __play_state))
   (setq _log_path (string __log_path))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:deviceid
   (&optional __deviceid)
   (if __deviceid (setq _deviceid __deviceid)) _deviceid)
  (:run_time
   (&optional __run_time)
   (if __run_time (setq _run_time __run_time)) _run_time)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:zero
   (&optional __zero)
   (if __zero (setq _zero __zero)) _zero)
  (:limit_min
   (&optional __limit_min)
   (if __limit_min (setq _limit_min __limit_min)) _limit_min)
  (:limit_max
   (&optional __limit_max)
   (if __limit_max (setq _limit_max __limit_max)) _limit_max)
  (:tool_size
   (&optional __tool_size)
   (if __tool_size (setq _tool_size __tool_size)) _tool_size)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:play_state
   (&optional __play_state)
   (if __play_state (setq _play_state __play_state)) _play_state)
  (:log_path
   (&optional __log_path)
   (if __log_path (setq _log_path __log_path)) _log_path)
  (:serialization-length
   ()
   (+
    ;; int64 _stamp
    8
    ;; string _deviceid
    4 (length _deviceid)
    ;; int64 _run_time
    8
    ;; int32[6] _enable
    (* 4    6)
    ;; string[6] _error
    (apply #'+ 4 (length _error)    6)
    ;; float32[6] _zero
    (* 4    6)
    ;; float32[6] _limit_min
    (* 4    6)
    ;; float32[6] _limit_max
    (* 4    6)
    ;; float32[3] _tool_size
    (* 4    3)
    ;; int32 _mode
    4
    ;; int32 _state
    4
    ;; int32 _play_state
    4
    ;; string _log_path
    4 (length _log_path)
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
     ;; int64 _run_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _run_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _run_time) (= (length (_run_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_run_time . bv) 0) 0) s)
              (write-long (ash (elt (_run_time . bv) 1) -1) s))
             ((and (class _run_time) (= (length (_run_time . bv)) 1)) ;; big1
              (write-long (elt (_run_time . bv) 0) s)
              (write-long (if (>= _run_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _run_time s)(write-long (if (>= _run_time 0) 0 #xffffffff) s)))
     ;; int32[6] _enable
     (dotimes (i 6)
       (write-long (elt _enable i) s)
       )
     ;; string[6] _error
     (write-long (length _error) s)
     (dolist (elem _error)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[6] _zero
     (dotimes (i 6)
       (sys::poke (elt _zero i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _limit_min
     (dotimes (i 6)
       (sys::poke (elt _limit_min i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _limit_max
     (dotimes (i 6)
       (sys::poke (elt _limit_max i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _tool_size
     (dotimes (i 3)
       (sys::poke (elt _tool_size i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _state
       (write-long _state s)
     ;; int32 _play_state
       (write-long _play_state s)
     ;; string _log_path
       (write-long (length _log_path) s) (princ _log_path s)
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
   ;; int64 _run_time
#+(or :alpha :irix6 :x86_64)
      (setf _run_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _run_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32[6] _enable
   (dotimes (i (length _enable))
     (setf (elt _enable i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; string[6] _error
   (dotimes (i (length _error))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;; float32[6] _zero
   (dotimes (i (length _zero))
     (setf (elt _zero i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _limit_min
   (dotimes (i (length _limit_min))
     (setf (elt _limit_min i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _limit_max
   (dotimes (i (length _limit_max))
     (setf (elt _limit_max i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _tool_size
   (dotimes (i (length _tool_size))
     (setf (elt _tool_size i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _play_state
     (setq _play_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _log_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _log_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get limx_arm_msgs::JointStatus :md5sum-) "45ad0038f02003358fe0dfc06f395181")
(setf (get limx_arm_msgs::JointStatus :datatype-) "limx_arm_msgs/JointStatus")
(setf (get limx_arm_msgs::JointStatus :definition-)
      "int64 stamp

string deviceid

int64 run_time

int32[6] enable
string[6] error
float32[6] zero
float32[6] limit_min
float32[6] limit_max
float32[3] tool_size

# 01位置控制，03速度模式，04电流模式 
int32 MODE_ANGLE    = 1
int32 MODE_VELOCITY = 3
int32 MODE_CURRENT  = 4
int32 mode

int32 STATE_IDLE      = 1
int32 STATE_STARTED   = 2
int32 STATE_PAUSED    = 3
int32 STATE_RESUMED   = 4
int32 STATE_STOPED    = 5
int32 STATE_SHUTDOWN  = 6
int32 state

int32 PLAY_STATE_IDLE      = 0
int32 PLAY_STATE_STARTED   = 1
int32 PLAY_STATE_FAILED    = 2
int32 PLAY_STATE_FINISHED  = 3
int32 play_state

string log_path

")



(provide :limx_arm_msgs/JointStatus "45ad0038f02003358fe0dfc06f395181")


