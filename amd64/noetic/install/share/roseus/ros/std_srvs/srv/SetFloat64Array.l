;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetFloat64Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetFloat64Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAY")
  (make-package "STD_SRVS::SETFLOAT64ARRAY"))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAYREQUEST")
  (make-package "STD_SRVS::SETFLOAT64ARRAYREQUEST"))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAYRESPONSE")
  (make-package "STD_SRVS::SETFLOAT64ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetFloat64ArrayRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetFloat64ArrayRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
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
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass std_srvs::SetFloat64ArrayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetFloat64ArrayResponse
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

(defclass std_srvs::SetFloat64Array
  :super ros::object
  :slots ())

(setf (get std_srvs::SetFloat64Array :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get std_srvs::SetFloat64Array :datatype-) "std_srvs/SetFloat64Array")
(setf (get std_srvs::SetFloat64Array :request) std_srvs::SetFloat64ArrayRequest)
(setf (get std_srvs::SetFloat64Array :response) std_srvs::SetFloat64ArrayResponse)

(defmethod std_srvs::SetFloat64ArrayRequest
  (:response () (instance std_srvs::SetFloat64ArrayResponse :init)))

(setf (get std_srvs::SetFloat64ArrayRequest :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get std_srvs::SetFloat64ArrayRequest :datatype-) "std_srvs/SetFloat64ArrayRequest")
(setf (get std_srvs::SetFloat64ArrayRequest :definition-)
      "float64[]  data     # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetFloat64ArrayResponse :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get std_srvs::SetFloat64ArrayResponse :datatype-) "std_srvs/SetFloat64ArrayResponse")
(setf (get std_srvs::SetFloat64ArrayResponse :definition-)
      "float64[]  data     # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetFloat64Array "5739026f6f0517440e663ba60441de94")


