;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetInt32ArrayWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetInt32ArrayWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETINT32ARRAYWITHTITLE")
  (make-package "STD_SRVS::SETINT32ARRAYWITHTITLE"))
(unless (find-package "STD_SRVS::SETINT32ARRAYWITHTITLEREQUEST")
  (make-package "STD_SRVS::SETINT32ARRAYWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETINT32ARRAYWITHTITLERESPONSE")
  (make-package "STD_SRVS::SETINT32ARRAYWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetInt32ArrayWithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetInt32ArrayWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
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
    ;; int32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; int32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass std_srvs::SetInt32ArrayWithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetInt32ArrayWithTitleResponse
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

(defclass std_srvs::SetInt32ArrayWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetInt32ArrayWithTitle :md5sum-) "d9c68c784b1060cc05cbd5cbd4bb2f2f")
(setf (get std_srvs::SetInt32ArrayWithTitle :datatype-) "std_srvs/SetInt32ArrayWithTitle")
(setf (get std_srvs::SetInt32ArrayWithTitle :request) std_srvs::SetInt32ArrayWithTitleRequest)
(setf (get std_srvs::SetInt32ArrayWithTitle :response) std_srvs::SetInt32ArrayWithTitleResponse)

(defmethod std_srvs::SetInt32ArrayWithTitleRequest
  (:response () (instance std_srvs::SetInt32ArrayWithTitleResponse :init)))

(setf (get std_srvs::SetInt32ArrayWithTitleRequest :md5sum-) "d9c68c784b1060cc05cbd5cbd4bb2f2f")
(setf (get std_srvs::SetInt32ArrayWithTitleRequest :datatype-) "std_srvs/SetInt32ArrayWithTitleRequest")
(setf (get std_srvs::SetInt32ArrayWithTitleRequest :definition-)
      "string title
int32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetInt32ArrayWithTitleResponse :md5sum-) "d9c68c784b1060cc05cbd5cbd4bb2f2f")
(setf (get std_srvs::SetInt32ArrayWithTitleResponse :datatype-) "std_srvs/SetInt32ArrayWithTitleResponse")
(setf (get std_srvs::SetInt32ArrayWithTitleResponse :definition-)
      "string title
int32[]  data    # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetInt32ArrayWithTitle "d9c68c784b1060cc05cbd5cbd4bb2f2f")


