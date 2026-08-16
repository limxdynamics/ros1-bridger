;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetUint32Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetUint32Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETUINT32ARRAY")
  (make-package "STD_SRVS::SETUINT32ARRAY"))
(unless (find-package "STD_SRVS::SETUINT32ARRAYREQUEST")
  (make-package "STD_SRVS::SETUINT32ARRAYREQUEST"))
(unless (find-package "STD_SRVS::SETUINT32ARRAYRESPONSE")
  (make-package "STD_SRVS::SETUINT32ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetUint32ArrayRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetUint32ArrayRequest
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
    ;; uint32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass std_srvs::SetUint32ArrayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetUint32ArrayResponse
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

(defclass std_srvs::SetUint32Array
  :super ros::object
  :slots ())

(setf (get std_srvs::SetUint32Array :md5sum-) "4587dc15de6ca63e475de8265ece26e9")
(setf (get std_srvs::SetUint32Array :datatype-) "std_srvs/SetUint32Array")
(setf (get std_srvs::SetUint32Array :request) std_srvs::SetUint32ArrayRequest)
(setf (get std_srvs::SetUint32Array :response) std_srvs::SetUint32ArrayResponse)

(defmethod std_srvs::SetUint32ArrayRequest
  (:response () (instance std_srvs::SetUint32ArrayResponse :init)))

(setf (get std_srvs::SetUint32ArrayRequest :md5sum-) "4587dc15de6ca63e475de8265ece26e9")
(setf (get std_srvs::SetUint32ArrayRequest :datatype-) "std_srvs/SetUint32ArrayRequest")
(setf (get std_srvs::SetUint32ArrayRequest :definition-)
      "uint32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetUint32ArrayResponse :md5sum-) "4587dc15de6ca63e475de8265ece26e9")
(setf (get std_srvs::SetUint32ArrayResponse :datatype-) "std_srvs/SetUint32ArrayResponse")
(setf (get std_srvs::SetUint32ArrayResponse :definition-)
      "uint32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetUint32Array "4587dc15de6ca63e475de8265ece26e9")


