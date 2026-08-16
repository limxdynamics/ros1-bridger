;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetStringArray)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetStringArray (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETSTRINGARRAY")
  (make-package "STD_SRVS::SETSTRINGARRAY"))
(unless (find-package "STD_SRVS::SETSTRINGARRAYREQUEST")
  (make-package "STD_SRVS::SETSTRINGARRAYREQUEST"))
(unless (find-package "STD_SRVS::SETSTRINGARRAYRESPONSE")
  (make-package "STD_SRVS::SETSTRINGARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetStringArrayRequest
  :super ros::object
  :slots (_data ))

(defmethod std_srvs::SetStringArrayRequest
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
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
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass std_srvs::SetStringArrayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetStringArrayResponse
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

(defclass std_srvs::SetStringArray
  :super ros::object
  :slots ())

(setf (get std_srvs::SetStringArray :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get std_srvs::SetStringArray :datatype-) "std_srvs/SetStringArray")
(setf (get std_srvs::SetStringArray :request) std_srvs::SetStringArrayRequest)
(setf (get std_srvs::SetStringArray :response) std_srvs::SetStringArrayResponse)

(defmethod std_srvs::SetStringArrayRequest
  (:response () (instance std_srvs::SetStringArrayResponse :init)))

(setf (get std_srvs::SetStringArrayRequest :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get std_srvs::SetStringArrayRequest :datatype-) "std_srvs/SetStringArrayRequest")
(setf (get std_srvs::SetStringArrayRequest :definition-)
      "string[] data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetStringArrayResponse :md5sum-) "1f446846928755f68919cab6862f6368")
(setf (get std_srvs::SetStringArrayResponse :datatype-) "std_srvs/SetStringArrayResponse")
(setf (get std_srvs::SetStringArrayResponse :definition-)
      "string[] data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetStringArray "1f446846928755f68919cab6862f6368")


