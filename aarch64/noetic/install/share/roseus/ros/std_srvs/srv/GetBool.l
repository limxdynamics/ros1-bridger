;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetBool)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetBool (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETBOOL")
  (make-package "STD_SRVS::GETBOOL"))
(unless (find-package "STD_SRVS::GETBOOLREQUEST")
  (make-package "STD_SRVS::GETBOOLREQUEST"))
(unless (find-package "STD_SRVS::GETBOOLRESPONSE")
  (make-package "STD_SRVS::GETBOOLRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetBoolRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetBoolRequest
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

(defclass std_srvs::GetBoolResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetBoolResponse
  (:init
   (&key
    ((:data __data) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetBool
  :super ros::object
  :slots ())

(setf (get std_srvs::GetBool :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get std_srvs::GetBool :datatype-) "std_srvs/GetBool")
(setf (get std_srvs::GetBool :request) std_srvs::GetBoolRequest)
(setf (get std_srvs::GetBool :response) std_srvs::GetBoolResponse)

(defmethod std_srvs::GetBoolRequest
  (:response () (instance std_srvs::GetBoolResponse :init)))

(setf (get std_srvs::GetBoolRequest :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get std_srvs::GetBoolRequest :datatype-) "std_srvs/GetBoolRequest")
(setf (get std_srvs::GetBoolRequest :definition-)
      "---
bool data # e.g. for hardware enabling / disabling
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::GetBoolResponse :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get std_srvs::GetBoolResponse :datatype-) "std_srvs/GetBoolResponse")
(setf (get std_srvs::GetBoolResponse :definition-)
      "---
bool data # e.g. for hardware enabling / disabling
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/GetBool "43f76a855b16e988566e147b692f2fab")


