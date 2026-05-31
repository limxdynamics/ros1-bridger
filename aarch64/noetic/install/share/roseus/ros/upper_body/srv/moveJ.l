;; Auto-generated. Do not edit!


(when (boundp 'upper_body::moveJ)
  (if (not (find-package "UPPER_BODY"))
    (make-package "UPPER_BODY"))
  (shadow 'moveJ (find-package "UPPER_BODY")))
(unless (find-package "UPPER_BODY::MOVEJ")
  (make-package "UPPER_BODY::MOVEJ"))
(unless (find-package "UPPER_BODY::MOVEJREQUEST")
  (make-package "UPPER_BODY::MOVEJREQUEST"))
(unless (find-package "UPPER_BODY::MOVEJRESPONSE")
  (make-package "UPPER_BODY::MOVEJRESPONSE"))

(in-package "ROS")





(defclass upper_body::moveJRequest
  :super ros::object
  :slots (_joints _speed ))

(defmethod upper_body::moveJRequest
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _joints __joints)
   (setq _speed (float __speed))
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass upper_body::moveJResponse
  :super ros::object
  :slots (_status ))

(defmethod upper_body::moveJResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass upper_body::moveJ
  :super ros::object
  :slots ())

(setf (get upper_body::moveJ :md5sum-) "2c017c62265b01f61bfb2f0a385a78f9")
(setf (get upper_body::moveJ :datatype-) "upper_body/moveJ")
(setf (get upper_body::moveJ :request) upper_body::moveJRequest)
(setf (get upper_body::moveJ :response) upper_body::moveJResponse)

(defmethod upper_body::moveJRequest
  (:response () (instance upper_body::moveJResponse :init)))

(setf (get upper_body::moveJRequest :md5sum-) "2c017c62265b01f61bfb2f0a385a78f9")
(setf (get upper_body::moveJRequest :datatype-) "upper_body/moveJRequest")
(setf (get upper_body::moveJRequest :definition-)
      "float32[] joints # unit: rad
float32 speed # unit: rad/s
---
int32 status

")

(setf (get upper_body::moveJResponse :md5sum-) "2c017c62265b01f61bfb2f0a385a78f9")
(setf (get upper_body::moveJResponse :datatype-) "upper_body/moveJResponse")
(setf (get upper_body::moveJResponse :definition-)
      "float32[] joints # unit: rad
float32 speed # unit: rad/s
---
int32 status

")



(provide :upper_body/moveJ "2c017c62265b01f61bfb2f0a385a78f9")


