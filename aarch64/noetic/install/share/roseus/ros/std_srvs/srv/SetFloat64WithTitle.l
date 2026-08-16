;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetFloat64WithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetFloat64WithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETFLOAT64WITHTITLE")
  (make-package "STD_SRVS::SETFLOAT64WITHTITLE"))
(unless (find-package "STD_SRVS::SETFLOAT64WITHTITLEREQUEST")
  (make-package "STD_SRVS::SETFLOAT64WITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETFLOAT64WITHTITLERESPONSE")
  (make-package "STD_SRVS::SETFLOAT64WITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetFloat64WithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetFloat64WithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _data (float __data))
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
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass std_srvs::SetFloat64WithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetFloat64WithTitleResponse
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

(defclass std_srvs::SetFloat64WithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetFloat64WithTitle :md5sum-) "190e3d8ecc56ed8111da13103f013258")
(setf (get std_srvs::SetFloat64WithTitle :datatype-) "std_srvs/SetFloat64WithTitle")
(setf (get std_srvs::SetFloat64WithTitle :request) std_srvs::SetFloat64WithTitleRequest)
(setf (get std_srvs::SetFloat64WithTitle :response) std_srvs::SetFloat64WithTitleResponse)

(defmethod std_srvs::SetFloat64WithTitleRequest
  (:response () (instance std_srvs::SetFloat64WithTitleResponse :init)))

(setf (get std_srvs::SetFloat64WithTitleRequest :md5sum-) "190e3d8ecc56ed8111da13103f013258")
(setf (get std_srvs::SetFloat64WithTitleRequest :datatype-) "std_srvs/SetFloat64WithTitleRequest")
(setf (get std_srvs::SetFloat64WithTitleRequest :definition-)
      "string title
float64  data     # data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetFloat64WithTitleResponse :md5sum-) "190e3d8ecc56ed8111da13103f013258")
(setf (get std_srvs::SetFloat64WithTitleResponse :datatype-) "std_srvs/SetFloat64WithTitleResponse")
(setf (get std_srvs::SetFloat64WithTitleResponse :definition-)
      "string title
float64  data     # data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetFloat64WithTitle "190e3d8ecc56ed8111da13103f013258")


