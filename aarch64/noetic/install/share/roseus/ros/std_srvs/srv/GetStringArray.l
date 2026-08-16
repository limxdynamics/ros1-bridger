;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetStringArray)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetStringArray (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETSTRINGARRAY")
  (make-package "STD_SRVS::GETSTRINGARRAY"))
(unless (find-package "STD_SRVS::GETSTRINGARRAYREQUEST")
  (make-package "STD_SRVS::GETSTRINGARRAYREQUEST"))
(unless (find-package "STD_SRVS::GETSTRINGARRAYRESPONSE")
  (make-package "STD_SRVS::GETSTRINGARRAYRESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetStringArrayRequest
  :super ros::object
  :slots ())

(defmethod std_srvs::GetStringArrayRequest
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

(defclass std_srvs::GetStringArrayResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetStringArrayResponse
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
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
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
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
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetStringArray
  :super ros::object
  :slots ())

(setf (get std_srvs::GetStringArray :md5sum-) "2f8ac32c56a0c6c6387aafaa8a26663d")
(setf (get std_srvs::GetStringArray :datatype-) "std_srvs/GetStringArray")
(setf (get std_srvs::GetStringArray :request) std_srvs::GetStringArrayRequest)
(setf (get std_srvs::GetStringArray :response) std_srvs::GetStringArrayResponse)

(defmethod std_srvs::GetStringArrayRequest
  (:response () (instance std_srvs::GetStringArrayResponse :init)))

(setf (get std_srvs::GetStringArrayRequest :md5sum-) "2f8ac32c56a0c6c6387aafaa8a26663d")
(setf (get std_srvs::GetStringArrayRequest :datatype-) "std_srvs/GetStringArrayRequest")
(setf (get std_srvs::GetStringArrayRequest :definition-)
      "---
string[] data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::GetStringArrayResponse :md5sum-) "2f8ac32c56a0c6c6387aafaa8a26663d")
(setf (get std_srvs::GetStringArrayResponse :datatype-) "std_srvs/GetStringArrayResponse")
(setf (get std_srvs::GetStringArrayResponse :definition-)
      "---
string[] data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/GetStringArray "2f8ac32c56a0c6c6387aafaa8a26663d")


