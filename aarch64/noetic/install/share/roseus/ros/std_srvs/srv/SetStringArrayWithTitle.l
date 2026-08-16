;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetStringArrayWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetStringArrayWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETSTRINGARRAYWITHTITLE")
  (make-package "STD_SRVS::SETSTRINGARRAYWITHTITLE"))
(unless (find-package "STD_SRVS::SETSTRINGARRAYWITHTITLEREQUEST")
  (make-package "STD_SRVS::SETSTRINGARRAYWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETSTRINGARRAYWITHTITLERESPONSE")
  (make-package "STD_SRVS::SETSTRINGARRAYWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetStringArrayWithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetStringArrayWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _title (string __title))
   (setq _data __data)
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ;; string[] _data
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass std_srvs::SetStringArrayWithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetStringArrayWithTitleResponse
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

(defclass std_srvs::SetStringArrayWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetStringArrayWithTitle :md5sum-) "f7337e803bf7ae13f1248c6c48b226a8")
(setf (get std_srvs::SetStringArrayWithTitle :datatype-) "std_srvs/SetStringArrayWithTitle")
(setf (get std_srvs::SetStringArrayWithTitle :request) std_srvs::SetStringArrayWithTitleRequest)
(setf (get std_srvs::SetStringArrayWithTitle :response) std_srvs::SetStringArrayWithTitleResponse)

(defmethod std_srvs::SetStringArrayWithTitleRequest
  (:response () (instance std_srvs::SetStringArrayWithTitleResponse :init)))

(setf (get std_srvs::SetStringArrayWithTitleRequest :md5sum-) "f7337e803bf7ae13f1248c6c48b226a8")
(setf (get std_srvs::SetStringArrayWithTitleRequest :datatype-) "std_srvs/SetStringArrayWithTitleRequest")
(setf (get std_srvs::SetStringArrayWithTitleRequest :definition-)
      "string title
string[] data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::SetStringArrayWithTitleResponse :md5sum-) "f7337e803bf7ae13f1248c6c48b226a8")
(setf (get std_srvs::SetStringArrayWithTitleResponse :datatype-) "std_srvs/SetStringArrayWithTitleResponse")
(setf (get std_srvs::SetStringArrayWithTitleResponse :definition-)
      "string title
string[] data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/SetStringArrayWithTitle "f7337e803bf7ae13f1248c6c48b226a8")


