;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetBoolWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetBoolWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETBOOLWITHTITLE")
  (make-package "STD_SRVS::SETBOOLWITHTITLE"))
(unless (find-package "STD_SRVS::SETBOOLWITHTITLEREQUEST")
  (make-package "STD_SRVS::SETBOOLWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETBOOLWITHTITLERESPONSE")
  (make-package "STD_SRVS::SETBOOLWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetBoolWithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetBoolWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _data __data)
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass std_srvs::SetBoolWithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetBoolWithTitleResponse
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

(defclass std_srvs::SetBoolWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetBoolWithTitle :md5sum-) "13c1605af28e84338a7c682325a34ac2")
(setf (get std_srvs::SetBoolWithTitle :datatype-) "std_srvs/SetBoolWithTitle")
(setf (get std_srvs::SetBoolWithTitle :request) std_srvs::SetBoolWithTitleRequest)
(setf (get std_srvs::SetBoolWithTitle :response) std_srvs::SetBoolWithTitleResponse)

(defmethod std_srvs::SetBoolWithTitleRequest
  (:response () (instance std_srvs::SetBoolWithTitleResponse :init)))

(setf (get std_srvs::SetBoolWithTitleRequest :md5sum-) "13c1605af28e84338a7c682325a34ac2")
(setf (get std_srvs::SetBoolWithTitleRequest :datatype-) "std_srvs/SetBoolWithTitleRequest")
(setf (get std_srvs::SetBoolWithTitleRequest :definition-)
      "string title

bool data # e.g. for hardware enabling / disabling
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetBoolWithTitleResponse :md5sum-) "13c1605af28e84338a7c682325a34ac2")
(setf (get std_srvs::SetBoolWithTitleResponse :datatype-) "std_srvs/SetBoolWithTitleResponse")
(setf (get std_srvs::SetBoolWithTitleResponse :definition-)
      "string title

bool data # e.g. for hardware enabling / disabling
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetBoolWithTitle "13c1605af28e84338a7c682325a34ac2")


