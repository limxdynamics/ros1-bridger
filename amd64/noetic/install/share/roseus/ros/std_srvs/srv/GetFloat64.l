;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetFloat64)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetFloat64 (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETFLOAT64")
  (make-package "STD_SRVS::GETFLOAT64"))
(unless (find-package "STD_SRVS::GETFLOAT64REQUEST")
  (make-package "STD_SRVS::GETFLOAT64REQUEST"))
(unless (find-package "STD_SRVS::GETFLOAT64RESPONSE")
  (make-package "STD_SRVS::GETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetFloat64Request
  :super ros::object
  :slots ())

(defmethod std_srvs::GetFloat64Request
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

(defclass std_srvs::GetFloat64Response
  :super ros::object
  :slots (_success _message _data ))

(defmethod std_srvs::GetFloat64Response
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
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass std_srvs::GetFloat64
  :super ros::object
  :slots ())

(setf (get std_srvs::GetFloat64 :md5sum-) "438b39d7999aa4b25db9b49336da31bd")
(setf (get std_srvs::GetFloat64 :datatype-) "std_srvs/GetFloat64")
(setf (get std_srvs::GetFloat64 :request) std_srvs::GetFloat64Request)
(setf (get std_srvs::GetFloat64 :response) std_srvs::GetFloat64Response)

(defmethod std_srvs::GetFloat64Request
  (:response () (instance std_srvs::GetFloat64Response :init)))

(setf (get std_srvs::GetFloat64Request :md5sum-) "438b39d7999aa4b25db9b49336da31bd")
(setf (get std_srvs::GetFloat64Request :datatype-) "std_srvs/GetFloat64Request")
(setf (get std_srvs::GetFloat64Request :definition-)
      "---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float64 data # data
")

(setf (get std_srvs::GetFloat64Response :md5sum-) "438b39d7999aa4b25db9b49336da31bd")
(setf (get std_srvs::GetFloat64Response :datatype-) "std_srvs/GetFloat64Response")
(setf (get std_srvs::GetFloat64Response :definition-)
      "---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float64 data # data
")



(provide :std_srvs/GetFloat64 "438b39d7999aa4b25db9b49336da31bd")


