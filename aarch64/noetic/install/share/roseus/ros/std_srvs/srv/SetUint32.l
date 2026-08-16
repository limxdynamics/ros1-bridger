;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetUint32)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetUint32 (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETUINT32")
  (make-package "STD_SRVS::SETUINT32"))
(unless (find-package "STD_SRVS::SETUINT32REQUEST")
  (make-package "STD_SRVS::SETUINT32REQUEST"))
(unless (find-package "STD_SRVS::SETUINT32RESPONSE")
  (make-package "STD_SRVS::SETUINT32RESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetUint32Request
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetUint32Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass std_srvs::SetUint32Response
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetUint32Response
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

(defclass std_srvs::SetUint32
  :super ros::object
  :slots ())

(setf (get std_srvs::SetUint32 :md5sum-) "0f2f397ed73410a6aa0c7229afbae23d")
(setf (get std_srvs::SetUint32 :datatype-) "std_srvs/SetUint32")
(setf (get std_srvs::SetUint32 :request) std_srvs::SetUint32Request)
(setf (get std_srvs::SetUint32 :response) std_srvs::SetUint32Response)

(defmethod std_srvs::SetUint32Request
  (:response () (instance std_srvs::SetUint32Response :init)))

(setf (get std_srvs::SetUint32Request :md5sum-) "0f2f397ed73410a6aa0c7229afbae23d")
(setf (get std_srvs::SetUint32Request :datatype-) "std_srvs/SetUint32Request")
(setf (get std_srvs::SetUint32Request :definition-)
      "uint32 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetUint32Response :md5sum-) "0f2f397ed73410a6aa0c7229afbae23d")
(setf (get std_srvs::SetUint32Response :datatype-) "std_srvs/SetUint32Response")
(setf (get std_srvs::SetUint32Response :definition-)
      "uint32 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetUint32 "0f2f397ed73410a6aa0c7229afbae23d")


