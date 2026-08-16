;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetInt32WithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetInt32WithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETINT32WITHTITLE")
  (make-package "STD_SRVS::SETINT32WITHTITLE"))
(unless (find-package "STD_SRVS::SETINT32WITHTITLEREQUEST")
  (make-package "STD_SRVS::SETINT32WITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETINT32WITHTITLERESPONSE")
  (make-package "STD_SRVS::SETINT32WITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetInt32WithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetInt32WithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _data (round __data))
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass std_srvs::SetInt32WithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetInt32WithTitleResponse
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

(defclass std_srvs::SetInt32WithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetInt32WithTitle :md5sum-) "04eab31200ddf4bba578f838361b709a")
(setf (get std_srvs::SetInt32WithTitle :datatype-) "std_srvs/SetInt32WithTitle")
(setf (get std_srvs::SetInt32WithTitle :request) std_srvs::SetInt32WithTitleRequest)
(setf (get std_srvs::SetInt32WithTitle :response) std_srvs::SetInt32WithTitleResponse)

(defmethod std_srvs::SetInt32WithTitleRequest
  (:response () (instance std_srvs::SetInt32WithTitleResponse :init)))

(setf (get std_srvs::SetInt32WithTitleRequest :md5sum-) "04eab31200ddf4bba578f838361b709a")
(setf (get std_srvs::SetInt32WithTitleRequest :datatype-) "std_srvs/SetInt32WithTitleRequest")
(setf (get std_srvs::SetInt32WithTitleRequest :definition-)
      "string title
int32 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetInt32WithTitleResponse :md5sum-) "04eab31200ddf4bba578f838361b709a")
(setf (get std_srvs::SetInt32WithTitleResponse :datatype-) "std_srvs/SetInt32WithTitleResponse")
(setf (get std_srvs::SetInt32WithTitleResponse :definition-)
      "string title
int32 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetInt32WithTitle "04eab31200ddf4bba578f838361b709a")


