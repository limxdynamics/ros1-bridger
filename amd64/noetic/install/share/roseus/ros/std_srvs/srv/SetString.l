;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetString)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetString (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETSTRING")
  (make-package "STD_SRVS::SETSTRING"))
(unless (find-package "STD_SRVS::SETSTRINGREQUEST")
  (make-package "STD_SRVS::SETSTRINGREQUEST"))
(unless (find-package "STD_SRVS::SETSTRINGRESPONSE")
  (make-package "STD_SRVS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetStringResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::SetString
  :super ros::object
  :slots ())

(setf (get std_srvs::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get std_srvs::SetString :datatype-) "std_srvs/SetString")
(setf (get std_srvs::SetString :request) std_srvs::SetStringRequest)
(setf (get std_srvs::SetString :response) std_srvs::SetStringResponse)

(defmethod std_srvs::SetStringRequest
  (:response () (instance std_srvs::SetStringResponse :init)))

(setf (get std_srvs::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get std_srvs::SetStringRequest :datatype-) "std_srvs/SetStringRequest")
(setf (get std_srvs::SetStringRequest :definition-)
      "string data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get std_srvs::SetStringResponse :datatype-) "std_srvs/SetStringResponse")
(setf (get std_srvs::SetStringResponse :definition-)
      "string data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetString "546971982e3fbbd5a41e60fb6432e357")


