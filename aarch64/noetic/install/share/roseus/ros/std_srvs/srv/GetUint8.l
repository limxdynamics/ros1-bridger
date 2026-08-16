;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetUint8)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetUint8 (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETUINT8")
  (make-package "STD_SRVS::GETUINT8"))
(unless (find-package "STD_SRVS::GETUINT8REQUEST")
  (make-package "STD_SRVS::GETUINT8REQUEST"))
(unless (find-package "STD_SRVS::GETUINT8RESPONSE")
  (make-package "STD_SRVS::GETUINT8RESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetUint8Request
  :super ros::object
  :slots ())

(defmethod std_srvs::GetUint8Request
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

(defclass std_srvs::GetUint8Response
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetUint8Response
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

(defclass std_srvs::GetUint8
  :super ros::object
  :slots ())

(setf (get std_srvs::GetUint8 :md5sum-) "0f686f75bf96e8287296bec2f13b20ac")
(setf (get std_srvs::GetUint8 :datatype-) "std_srvs/GetUint8")
(setf (get std_srvs::GetUint8 :request) std_srvs::GetUint8Request)
(setf (get std_srvs::GetUint8 :response) std_srvs::GetUint8Response)

(defmethod std_srvs::GetUint8Request
  (:response () (instance std_srvs::GetUint8Response :init)))

(setf (get std_srvs::GetUint8Request :md5sum-) "0f686f75bf96e8287296bec2f13b20ac")
(setf (get std_srvs::GetUint8Request :datatype-) "std_srvs/GetUint8Request")
(setf (get std_srvs::GetUint8Request :definition-)
      "---
uint8 data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::GetUint8Response :md5sum-) "0f686f75bf96e8287296bec2f13b20ac")
(setf (get std_srvs::GetUint8Response :datatype-) "std_srvs/GetUint8Response")
(setf (get std_srvs::GetUint8Response :definition-)
      "---
uint8 data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/GetUint8 "0f686f75bf96e8287296bec2f13b20ac")


