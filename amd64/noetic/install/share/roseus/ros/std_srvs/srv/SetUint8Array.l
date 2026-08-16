;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetUint8Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetUint8Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETUINT8ARRAY")
  (make-package "STD_SRVS::SETUINT8ARRAY"))
(unless (find-package "STD_SRVS::SETUINT8ARRAYREQUEST")
  (make-package "STD_SRVS::SETUINT8ARRAYREQUEST"))
(unless (find-package "STD_SRVS::SETUINT8ARRAYRESPONSE")
  (make-package "STD_SRVS::SETUINT8ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetUint8ArrayRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetUint8ArrayRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::SetUint8ArrayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetUint8ArrayResponse
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

(defclass std_srvs::SetUint8Array
  :super ros::object
  :slots ())

(setf (get std_srvs::SetUint8Array :md5sum-) "384ad86502b817c951ed61de6ab8c366")
(setf (get std_srvs::SetUint8Array :datatype-) "std_srvs/SetUint8Array")
(setf (get std_srvs::SetUint8Array :request) std_srvs::SetUint8ArrayRequest)
(setf (get std_srvs::SetUint8Array :response) std_srvs::SetUint8ArrayResponse)

(defmethod std_srvs::SetUint8ArrayRequest
  (:response () (instance std_srvs::SetUint8ArrayResponse :init)))

(setf (get std_srvs::SetUint8ArrayRequest :md5sum-) "384ad86502b817c951ed61de6ab8c366")
(setf (get std_srvs::SetUint8ArrayRequest :datatype-) "std_srvs/SetUint8ArrayRequest")
(setf (get std_srvs::SetUint8ArrayRequest :definition-)
      "uint8[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetUint8ArrayResponse :md5sum-) "384ad86502b817c951ed61de6ab8c366")
(setf (get std_srvs::SetUint8ArrayResponse :datatype-) "std_srvs/SetUint8ArrayResponse")
(setf (get std_srvs::SetUint8ArrayResponse :definition-)
      "uint8[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetUint8Array "384ad86502b817c951ed61de6ab8c366")


