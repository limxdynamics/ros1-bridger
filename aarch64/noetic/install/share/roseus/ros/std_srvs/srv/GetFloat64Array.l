;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetFloat64Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetFloat64Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETFLOAT64ARRAY")
  (make-package "STD_SRVS::GETFLOAT64ARRAY"))
(unless (find-package "STD_SRVS::GETFLOAT64ARRAYREQUEST")
  (make-package "STD_SRVS::GETFLOAT64ARRAYREQUEST"))
(unless (find-package "STD_SRVS::GETFLOAT64ARRAYRESPONSE")
  (make-package "STD_SRVS::GETFLOAT64ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetFloat64ArrayRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetFloat64ArrayRequest
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

(defclass std_srvs::GetFloat64ArrayResponse
  :super ros::object
  :slots (_success _message _data ))

(defmethod std_srvs::GetFloat64ArrayResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _data __data)
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
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass std_srvs::GetFloat64Array
  :super ros::object
  :slots ())

(setf (get std_srvs::GetFloat64Array :md5sum-) "81dff105e15bd1f4e2432a82cc9cf9c9")
(setf (get std_srvs::GetFloat64Array :datatype-) "std_srvs/GetFloat64Array")
(setf (get std_srvs::GetFloat64Array :request) std_srvs::GetFloat64ArrayRequest)
(setf (get std_srvs::GetFloat64Array :response) std_srvs::GetFloat64ArrayResponse)

(defmethod std_srvs::GetFloat64ArrayRequest
  (:response () (instance std_srvs::GetFloat64ArrayResponse :init)))

(setf (get std_srvs::GetFloat64ArrayRequest :md5sum-) "81dff105e15bd1f4e2432a82cc9cf9c9")
(setf (get std_srvs::GetFloat64ArrayRequest :datatype-) "std_srvs/GetFloat64ArrayRequest")
(setf (get std_srvs::GetFloat64ArrayRequest :definition-)
      "---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float64[] data # array of data
")

(setf (get std_srvs::GetFloat64ArrayResponse :md5sum-) "81dff105e15bd1f4e2432a82cc9cf9c9")
(setf (get std_srvs::GetFloat64ArrayResponse :datatype-) "std_srvs/GetFloat64ArrayResponse")
(setf (get std_srvs::GetFloat64ArrayResponse :definition-)
      "---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float64[] data # array of data
")



(provide :std_srvs/GetFloat64Array "81dff105e15bd1f4e2432a82cc9cf9c9")


