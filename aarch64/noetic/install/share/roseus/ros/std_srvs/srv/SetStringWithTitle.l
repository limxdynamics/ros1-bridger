;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetStringWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetStringWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETSTRINGWITHTITLE")
  (make-package "STD_SRVS::SETSTRINGWITHTITLE"))
(unless (find-package "STD_SRVS::SETSTRINGWITHTITLEREQUEST")
  (make-package "STD_SRVS::SETSTRINGWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETSTRINGWITHTITLERESPONSE")
  (make-package "STD_SRVS::SETSTRINGWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetStringWithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetStringWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _data (string __data))
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
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::SetStringWithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetStringWithTitleResponse
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

(defclass std_srvs::SetStringWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetStringWithTitle :md5sum-) "587dcc11db273570c8595f5c589bb21b")
(setf (get std_srvs::SetStringWithTitle :datatype-) "std_srvs/SetStringWithTitle")
(setf (get std_srvs::SetStringWithTitle :request) std_srvs::SetStringWithTitleRequest)
(setf (get std_srvs::SetStringWithTitle :response) std_srvs::SetStringWithTitleResponse)

(defmethod std_srvs::SetStringWithTitleRequest
  (:response () (instance std_srvs::SetStringWithTitleResponse :init)))

(setf (get std_srvs::SetStringWithTitleRequest :md5sum-) "587dcc11db273570c8595f5c589bb21b")
(setf (get std_srvs::SetStringWithTitleRequest :datatype-) "std_srvs/SetStringWithTitleRequest")
(setf (get std_srvs::SetStringWithTitleRequest :definition-)
      "string title
string data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetStringWithTitleResponse :md5sum-) "587dcc11db273570c8595f5c589bb21b")
(setf (get std_srvs::SetStringWithTitleResponse :datatype-) "std_srvs/SetStringWithTitleResponse")
(setf (get std_srvs::SetStringWithTitleResponse :definition-)
      "string title
string data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetStringWithTitle "587dcc11db273570c8595f5c589bb21b")


