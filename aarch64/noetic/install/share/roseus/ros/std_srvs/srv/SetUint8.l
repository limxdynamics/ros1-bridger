;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetUint8)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetUint8 (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETUINT8")
  (make-package "STD_SRVS::SETUINT8"))
(unless (find-package "STD_SRVS::SETUINT8REQUEST")
  (make-package "STD_SRVS::SETUINT8REQUEST"))
(unless (find-package "STD_SRVS::SETUINT8RESPONSE")
  (make-package "STD_SRVS::SETUINT8RESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetUint8Request
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetUint8Request
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
    ;; uint8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass std_srvs::SetUint8Response
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetUint8Response
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

(defclass std_srvs::SetUint8
  :super ros::object
  :slots ())

(setf (get std_srvs::SetUint8 :md5sum-) "6af36db12f1ac4a2aedbd1b5bfa8850d")
(setf (get std_srvs::SetUint8 :datatype-) "std_srvs/SetUint8")
(setf (get std_srvs::SetUint8 :request) std_srvs::SetUint8Request)
(setf (get std_srvs::SetUint8 :response) std_srvs::SetUint8Response)

(defmethod std_srvs::SetUint8Request
  (:response () (instance std_srvs::SetUint8Response :init)))

(setf (get std_srvs::SetUint8Request :md5sum-) "6af36db12f1ac4a2aedbd1b5bfa8850d")
(setf (get std_srvs::SetUint8Request :datatype-) "std_srvs/SetUint8Request")
(setf (get std_srvs::SetUint8Request :definition-)
      "uint8 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetUint8Response :md5sum-) "6af36db12f1ac4a2aedbd1b5bfa8850d")
(setf (get std_srvs::SetUint8Response :datatype-) "std_srvs/SetUint8Response")
(setf (get std_srvs::SetUint8Response :definition-)
      "uint8 data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetUint8 "6af36db12f1ac4a2aedbd1b5bfa8850d")


