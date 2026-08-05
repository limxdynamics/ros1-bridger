;; Auto-generated. Do not edit!


(when (boundp 'limx_arm_msgs::JointData)
  (if (not (find-package "LIMX_ARM_MSGS"))
    (make-package "LIMX_ARM_MSGS"))
  (shadow 'JointData (find-package "LIMX_ARM_MSGS")))
(unless (find-package "LIMX_ARM_MSGS::JOINTDATA")
  (make-package "LIMX_ARM_MSGS::JOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude JointData.msg.html


(defclass limx_arm_msgs::JointData
  :super ros::object
  :slots (_stamp _deviceid _angle _velocity _current ))

(defmethod limx_arm_msgs::JointData
  (:init
   (&key
    ((:stamp __stamp) 0)
    ((:deviceid __deviceid) "")
    ((:angle __angle) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:current __current) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp (round __stamp))
   (setq _deviceid (string __deviceid))
   (setq _angle __angle)
   (setq _velocity __velocity)
   (setq _current __current)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:deviceid
   (&optional __deviceid)
   (if __deviceid (setq _deviceid __deviceid)) _deviceid)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; int64 _stamp
    8
    ;; string _deviceid
    4 (length _deviceid)
    ;; float32[6] _angle
    (* 4    6)
    ;; float32[6] _velocity
    (* 4    6)
    ;; float32[6] _current
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
     ;; float32[6] _angle
     (dotimes (i 6)
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _velocity
     (dotimes (i 6)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[6] _current
     (dotimes (i 6)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[6] _angle
   (dotimes (i (length _angle))
     (setf (elt _angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[6] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get limx_arm_msgs::JointData :md5sum-) "d17bc79a498488bca00b006c2ebe2bc8")
(setf (get limx_arm_msgs::JointData :datatype-) "limx_arm_msgs/JointData")
(setf (get limx_arm_msgs::JointData :definition-)
      "int64 stamp

string deviceid

float32[6] angle
float32[6] velocity
float32[6] current

")



(provide :limx_arm_msgs/JointData "d17bc79a498488bca00b006c2ebe2bc8")


