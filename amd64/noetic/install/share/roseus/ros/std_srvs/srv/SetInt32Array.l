;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetInt32Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetInt32Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETINT32ARRAY")
  (make-package "STD_SRVS::SETINT32ARRAY"))
(unless (find-package "STD_SRVS::SETINT32ARRAYREQUEST")
  (make-package "STD_SRVS::SETINT32ARRAYREQUEST"))
(unless (find-package "STD_SRVS::SETINT32ARRAYRESPONSE")
  (make-package "STD_SRVS::SETINT32ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetInt32ArrayRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetInt32ArrayRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
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
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass std_srvs::SetInt32ArrayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetInt32ArrayResponse
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

(defclass std_srvs::SetInt32Array
  :super ros::object
  :slots ())

(setf (get std_srvs::SetInt32Array :md5sum-) "5465473c6af5f658a0ee6137d0f52c0f")
(setf (get std_srvs::SetInt32Array :datatype-) "std_srvs/SetInt32Array")
(setf (get std_srvs::SetInt32Array :request) std_srvs::SetInt32ArrayRequest)
(setf (get std_srvs::SetInt32Array :response) std_srvs::SetInt32ArrayResponse)

(defmethod std_srvs::SetInt32ArrayRequest
  (:response () (instance std_srvs::SetInt32ArrayResponse :init)))

(setf (get std_srvs::SetInt32ArrayRequest :md5sum-) "5465473c6af5f658a0ee6137d0f52c0f")
(setf (get std_srvs::SetInt32ArrayRequest :datatype-) "std_srvs/SetInt32ArrayRequest")
(setf (get std_srvs::SetInt32ArrayRequest :definition-)
      "int32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetInt32ArrayResponse :md5sum-) "5465473c6af5f658a0ee6137d0f52c0f")
(setf (get std_srvs::SetInt32ArrayResponse :datatype-) "std_srvs/SetInt32ArrayResponse")
(setf (get std_srvs::SetInt32ArrayResponse :definition-)
      "int32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetInt32Array "5465473c6af5f658a0ee6137d0f52c0f")


