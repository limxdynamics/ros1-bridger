;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetFloat32Array)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetFloat32Array (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETFLOAT32ARRAY")
  (make-package "STD_SRVS::GETFLOAT32ARRAY"))
(unless (find-package "STD_SRVS::GETFLOAT32ARRAYREQUEST")
  (make-package "STD_SRVS::GETFLOAT32ARRAYREQUEST"))
(unless (find-package "STD_SRVS::GETFLOAT32ARRAYRESPONSE")
  (make-package "STD_SRVS::GETFLOAT32ARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetFloat32ArrayRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetFloat32ArrayRequest
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

(defclass std_srvs::GetFloat32ArrayResponse
  :super ros::object
  :slots (_success _message _data ))

(defmethod std_srvs::GetFloat32ArrayResponse
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
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass std_srvs::GetFloat32Array
  :super ros::object
  :slots ())

(setf (get std_srvs::GetFloat32Array :md5sum-) "9b3e91babdca48b3b67f859255eb7eaa")
(setf (get std_srvs::GetFloat32Array :datatype-) "std_srvs/GetFloat32Array")
(setf (get std_srvs::GetFloat32Array :request) std_srvs::GetFloat32ArrayRequest)
(setf (get std_srvs::GetFloat32Array :response) std_srvs::GetFloat32ArrayResponse)

(defmethod std_srvs::GetFloat32ArrayRequest
  (:response () (instance std_srvs::GetFloat32ArrayResponse :init)))

(setf (get std_srvs::GetFloat32ArrayRequest :md5sum-) "9b3e91babdca48b3b67f859255eb7eaa")
(setf (get std_srvs::GetFloat32ArrayRequest :datatype-) "std_srvs/GetFloat32ArrayRequest")
(setf (get std_srvs::GetFloat32ArrayRequest :definition-)
      "
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32[] data # array of data
")

(setf (get std_srvs::GetFloat32ArrayResponse :md5sum-) "9b3e91babdca48b3b67f859255eb7eaa")
(setf (get std_srvs::GetFloat32ArrayResponse :datatype-) "std_srvs/GetFloat32ArrayResponse")
(setf (get std_srvs::GetFloat32ArrayResponse :definition-)
      "
---
bool success # indicate successful run of triggered service
string message # informational, e.g. for error messages
float32[] data # array of data
")



(provide :std_srvs/GetFloat32Array "9b3e91babdca48b3b67f859255eb7eaa")


