;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetString)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetString (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETSTRING")
  (make-package "STD_SRVS::GETSTRING"))
(unless (find-package "STD_SRVS::GETSTRINGREQUEST")
  (make-package "STD_SRVS::GETSTRINGREQUEST"))
(unless (find-package "STD_SRVS::GETSTRINGRESPONSE")
  (make-package "STD_SRVS::GETSTRINGRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetStringRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetStringRequest
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

(defclass std_srvs::GetStringResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetStringResponse
  (:init
   (&key
    ((:data __data) "")
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetString
  :super ros::object
  :slots ())

(setf (get std_srvs::GetString :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get std_srvs::GetString :datatype-) "std_srvs/GetString")
(setf (get std_srvs::GetString :request) std_srvs::GetStringRequest)
(setf (get std_srvs::GetString :response) std_srvs::GetStringResponse)

(defmethod std_srvs::GetStringRequest
  (:response () (instance std_srvs::GetStringResponse :init)))

(setf (get std_srvs::GetStringRequest :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get std_srvs::GetStringRequest :datatype-) "std_srvs/GetStringRequest")
(setf (get std_srvs::GetStringRequest :definition-)
      "---
string data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::GetStringResponse :md5sum-) "15baad3d82a7b70bfc4eb31d66322293")
(setf (get std_srvs::GetStringResponse :datatype-) "std_srvs/GetStringResponse")
(setf (get std_srvs::GetStringResponse :definition-)
      "---
string data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/GetString "15baad3d82a7b70bfc4eb31d66322293")


