;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::SetFloat64ArrayWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'SetFloat64ArrayWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLE")
  (make-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLE"))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLEREQUEST")
  (make-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLERESPONSE")
  (make-package "STD_SRVS::SETFLOAT64ARRAYWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::SetFloat64ArrayWithTitleRequest
  :super ros::object
  :slots (_title _data ))

(defmethod std_srvs::SetFloat64ArrayWithTitleRequest
  (:init
   (&key
    ((:title __title) "")
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
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
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass std_srvs::SetFloat64ArrayWithTitleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod std_srvs::SetFloat64ArrayWithTitleResponse
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

(defclass std_srvs::SetFloat64ArrayWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::SetFloat64ArrayWithTitle :md5sum-) "df55ab8abe7dc128d949e1c0d94b9867")
(setf (get std_srvs::SetFloat64ArrayWithTitle :datatype-) "std_srvs/SetFloat64ArrayWithTitle")
(setf (get std_srvs::SetFloat64ArrayWithTitle :request) std_srvs::SetFloat64ArrayWithTitleRequest)
(setf (get std_srvs::SetFloat64ArrayWithTitle :response) std_srvs::SetFloat64ArrayWithTitleResponse)

(defmethod std_srvs::SetFloat64ArrayWithTitleRequest
  (:response () (instance std_srvs::SetFloat64ArrayWithTitleResponse :init)))

(setf (get std_srvs::SetFloat64ArrayWithTitleRequest :md5sum-) "df55ab8abe7dc128d949e1c0d94b9867")
(setf (get std_srvs::SetFloat64ArrayWithTitleRequest :datatype-) "std_srvs/SetFloat64ArrayWithTitleRequest")
(setf (get std_srvs::SetFloat64ArrayWithTitleRequest :definition-)
      "string title
float64[]  data     # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::SetFloat64ArrayWithTitleResponse :md5sum-) "df55ab8abe7dc128d949e1c0d94b9867")
(setf (get std_srvs::SetFloat64ArrayWithTitleResponse :datatype-) "std_srvs/SetFloat64ArrayWithTitleResponse")
(setf (get std_srvs::SetFloat64ArrayWithTitleResponse :definition-)
      "string title
float64[]  data     # array of data
---
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/SetFloat64ArrayWithTitle "df55ab8abe7dc128d949e1c0d94b9867")


