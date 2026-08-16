;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetFloat32)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetFloat32 (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETFLOAT32")
  (make-package "STD_SRVS::GETFLOAT32"))
(unless (find-package "STD_SRVS::GETFLOAT32REQUEST")
  (make-package "STD_SRVS::GETFLOAT32REQUEST"))
(unless (find-package "STD_SRVS::GETFLOAT32RESPONSE")
  (make-package "STD_SRVS::GETFLOAT32RESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetFloat32Request
  :super ros::object
  :slots ())

(defmethod std_srvs::GetFloat32Request
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass std_srvs::GetFloat32Response
  :super ros::object
  :slots (_success _message _data ))

(defmethod std_srvs::GetFloat32Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _data (float __data))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass std_srvs::GetFloat32
  :super ros::object
  :slots ())

(setf (get std_srvs::GetFloat32 :md5sum-) "5ef892a71f7c5681b5759df4f5cd6c53")
(setf (get std_srvs::GetFloat32 :datatype-) "std_srvs/GetFloat32")
(setf (get std_srvs::GetFloat32 :request) std_srvs::GetFloat32Request)
(setf (get std_srvs::GetFloat32 :response) std_srvs::GetFloat32Response)

(defmethod std_srvs::GetFloat32Request
  (:response () (instance std_srvs::GetFloat32Response :init)))

(setf (get std_srvs::GetFloat32Request :md5sum-) "5ef892a71f7c5681b5759df4f5cd6c53")
(setf (get std_srvs::GetFloat32Request :datatype-) "std_srvs/GetFloat32Request")
(setf (get std_srvs::GetFloat32Request :definition-)
      "
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32 data # data
")

(setf (get std_srvs::GetFloat32Response :md5sum-) "5ef892a71f7c5681b5759df4f5cd6c53")
(setf (get std_srvs::GetFloat32Response :datatype-) "std_srvs/GetFloat32Response")
(setf (get std_srvs::GetFloat32Response :definition-)
      "
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32 data # data
")



(provide :std_srvs/GetFloat32 "5ef892a71f7c5681b5759df4f5cd6c53")


