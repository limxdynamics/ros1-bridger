;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetFloat32WithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetFloat32WithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETFLOAT32WITHTITLE")
  (make-package "STD_SRVS::GETFLOAT32WITHTITLE"))
(unless (find-package "STD_SRVS::GETFLOAT32WITHTITLEREQUEST")
  (make-package "STD_SRVS::GETFLOAT32WITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::GETFLOAT32WITHTITLERESPONSE")
  (make-package "STD_SRVS::GETFLOAT32WITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetFloat32WithTitleRequest
  :super ros::object
  :slots (_title ))

(defmethod std_srvs::GetFloat32WithTitleRequest
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

(defclass std_srvs::GetFloat32WithTitleResponse
  :super ros::object
  :slots (_success _message _data ))

(defmethod std_srvs::GetFloat32WithTitleResponse
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

(defclass std_srvs::GetFloat32WithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::GetFloat32WithTitle :md5sum-) "32cf7e69fa864f7b17666cf3d7cd7344")
(setf (get std_srvs::GetFloat32WithTitle :datatype-) "std_srvs/GetFloat32WithTitle")
(setf (get std_srvs::GetFloat32WithTitle :request) std_srvs::GetFloat32WithTitleRequest)
(setf (get std_srvs::GetFloat32WithTitle :response) std_srvs::GetFloat32WithTitleResponse)

(defmethod std_srvs::GetFloat32WithTitleRequest
  (:response () (instance std_srvs::GetFloat32WithTitleResponse :init)))

(setf (get std_srvs::GetFloat32WithTitleRequest :md5sum-) "32cf7e69fa864f7b17666cf3d7cd7344")
(setf (get std_srvs::GetFloat32WithTitleRequest :datatype-) "std_srvs/GetFloat32WithTitleRequest")
(setf (get std_srvs::GetFloat32WithTitleRequest :definition-)
      "string title
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32 data # data
")

(setf (get std_srvs::GetFloat32WithTitleResponse :md5sum-) "32cf7e69fa864f7b17666cf3d7cd7344")
(setf (get std_srvs::GetFloat32WithTitleResponse :datatype-) "std_srvs/GetFloat32WithTitleResponse")
(setf (get std_srvs::GetFloat32WithTitleResponse :definition-)
      "string title
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32 data # data
")



(provide :std_srvs/GetFloat32WithTitle "32cf7e69fa864f7b17666cf3d7cd7344")


