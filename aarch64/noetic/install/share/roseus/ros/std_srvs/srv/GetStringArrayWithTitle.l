;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetStringArrayWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetStringArrayWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETSTRINGARRAYWITHTITLE")
  (make-package "STD_SRVS::GETSTRINGARRAYWITHTITLE"))
(unless (find-package "STD_SRVS::GETSTRINGARRAYWITHTITLEREQUEST")
  (make-package "STD_SRVS::GETSTRINGARRAYWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::GETSTRINGARRAYWITHTITLERESPONSE")
  (make-package "STD_SRVS::GETSTRINGARRAYWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetStringArrayWithTitleRequest
  :super ros::object
  :slots (_title ))

(defmethod std_srvs::GetStringArrayWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    )
   (send-super :init)
   (setq _title (string __title))
   self)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:serialization-length
   ()
   (+
    ;; string _title
    4 (length _title)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetStringArrayWithTitleResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetStringArrayWithTitleResponse
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

(defclass std_srvs::GetStringArrayWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::GetStringArrayWithTitle :md5sum-) "bb72c643575c1e3ad2b1ece3bf121925")
(setf (get std_srvs::GetStringArrayWithTitle :datatype-) "std_srvs/GetStringArrayWithTitle")
(setf (get std_srvs::GetStringArrayWithTitle :request) std_srvs::GetStringArrayWithTitleRequest)
(setf (get std_srvs::GetStringArrayWithTitle :response) std_srvs::GetStringArrayWithTitleResponse)

(defmethod std_srvs::GetStringArrayWithTitleRequest
  (:response () (instance std_srvs::GetStringArrayWithTitleResponse :init)))

(setf (get std_srvs::GetStringArrayWithTitleRequest :md5sum-) "bb72c643575c1e3ad2b1ece3bf121925")
(setf (get std_srvs::GetStringArrayWithTitleRequest :datatype-) "std_srvs/GetStringArrayWithTitleRequest")
(setf (get std_srvs::GetStringArrayWithTitleRequest :definition-)
      "string title
---
string[] data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::GetStringArrayWithTitleResponse :md5sum-) "bb72c643575c1e3ad2b1ece3bf121925")
(setf (get std_srvs::GetStringArrayWithTitleResponse :datatype-) "std_srvs/GetStringArrayWithTitleResponse")
(setf (get std_srvs::GetStringArrayWithTitleResponse :definition-)
      "string title
---
string[] data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/GetStringArrayWithTitle "bb72c643575c1e3ad2b1ece3bf121925")


