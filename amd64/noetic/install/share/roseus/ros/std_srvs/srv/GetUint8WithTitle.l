;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetUint8WithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetUint8WithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETUINT8WITHTITLE")
  (make-package "STD_SRVS::GETUINT8WITHTITLE"))
(unless (find-package "STD_SRVS::GETUINT8WITHTITLEREQUEST")
  (make-package "STD_SRVS::GETUINT8WITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::GETUINT8WITHTITLERESPONSE")
  (make-package "STD_SRVS::GETUINT8WITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetUint8WithTitleRequest
  :super ros::object
  :slots (_title ))

(defmethod std_srvs::GetUint8WithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    )
   (send-super :init)
   (setq _title (string __title))
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetUint8WithTitleResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetUint8WithTitleResponse
  (:init
   (&key
    ((:data __data) 0)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data (round __data))
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
    ;; uint8 _data
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
     ;; uint8 _data
       (write-byte _data s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetUint8WithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::GetUint8WithTitle :md5sum-) "64d58bd676264796fea70ec2d8c95b35")
(setf (get std_srvs::GetUint8WithTitle :datatype-) "std_srvs/GetUint8WithTitle")
(setf (get std_srvs::GetUint8WithTitle :request) std_srvs::GetUint8WithTitleRequest)
(setf (get std_srvs::GetUint8WithTitle :response) std_srvs::GetUint8WithTitleResponse)

(defmethod std_srvs::GetUint8WithTitleRequest
  (:response () (instance std_srvs::GetUint8WithTitleResponse :init)))

(setf (get std_srvs::GetUint8WithTitleRequest :md5sum-) "64d58bd676264796fea70ec2d8c95b35")
(setf (get std_srvs::GetUint8WithTitleRequest :datatype-) "std_srvs/GetUint8WithTitleRequest")
(setf (get std_srvs::GetUint8WithTitleRequest :definition-)
      "string title
---
uint8 data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::GetUint8WithTitleResponse :md5sum-) "64d58bd676264796fea70ec2d8c95b35")
(setf (get std_srvs::GetUint8WithTitleResponse :datatype-) "std_srvs/GetUint8WithTitleResponse")
(setf (get std_srvs::GetUint8WithTitleResponse :definition-)
      "string title
---
uint8 data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/GetUint8WithTitle "64d58bd676264796fea70ec2d8c95b35")


