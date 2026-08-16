;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetUint32Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetUint32Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETUINT32ARRAY")
  (make-package "STD_SRVS::GETUINT32ARRAY"))
(unless (find-package "STD_SRVS::GETUINT32ARRAYREQUEST")
  (make-package "STD_SRVS::GETUINT32ARRAYREQUEST"))
(unless (find-package "STD_SRVS::GETUINT32ARRAYRESPONSE")
  (make-package "STD_SRVS::GETUINT32ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetUint32ArrayRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetUint32ArrayRequest
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

(defclass std_srvs::GetUint32ArrayResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetUint32ArrayResponse
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data __data)
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
    ;; uint32[] _data
    (* 4    (length _data)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetUint32Array
  :super ros::object
  :slots ())

(setf (get std_srvs::GetUint32Array :md5sum-) "64a7289ff26fd15c6086810950c31b58")
(setf (get std_srvs::GetUint32Array :datatype-) "std_srvs/GetUint32Array")
(setf (get std_srvs::GetUint32Array :request) std_srvs::GetUint32ArrayRequest)
(setf (get std_srvs::GetUint32Array :response) std_srvs::GetUint32ArrayResponse)

(defmethod std_srvs::GetUint32ArrayRequest
  (:response () (instance std_srvs::GetUint32ArrayResponse :init)))

(setf (get std_srvs::GetUint32ArrayRequest :md5sum-) "64a7289ff26fd15c6086810950c31b58")
(setf (get std_srvs::GetUint32ArrayRequest :datatype-) "std_srvs/GetUint32ArrayRequest")
(setf (get std_srvs::GetUint32ArrayRequest :definition-)
      "---
uint32[]  data    # array of data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::GetUint32ArrayResponse :md5sum-) "64a7289ff26fd15c6086810950c31b58")
(setf (get std_srvs::GetUint32ArrayResponse :datatype-) "std_srvs/GetUint32ArrayResponse")
(setf (get std_srvs::GetUint32ArrayResponse :definition-)
      "---
uint32[]  data    # array of data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/GetUint32Array "64a7289ff26fd15c6086810950c31b58")


