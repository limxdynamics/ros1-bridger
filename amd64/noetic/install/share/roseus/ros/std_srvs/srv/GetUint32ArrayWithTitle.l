;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetUint32ArrayWithTitle)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetUint32ArrayWithTitle (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETUINT32ARRAYWITHTITLE")
  (make-package "STD_SRVS::GETUINT32ARRAYWITHTITLE"))
(unless (find-package "STD_SRVS::GETUINT32ARRAYWITHTITLEREQUEST")
  (make-package "STD_SRVS::GETUINT32ARRAYWITHTITLEREQUEST"))
(unless (find-package "STD_SRVS::GETUINT32ARRAYWITHTITLERESPONSE")
  (make-package "STD_SRVS::GETUINT32ARRAYWITHTITLERESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetUint32ArrayWithTitleRequest
  :super ros::object
  :slots (_title ))

(defmethod std_srvs::GetUint32ArrayWithTitleRequest
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

(defclass std_srvs::GetUint32ArrayWithTitleResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetUint32ArrayWithTitleResponse
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

(defclass std_srvs::GetUint32ArrayWithTitle
  :super ros::object
  :slots ())

(setf (get std_srvs::GetUint32ArrayWithTitle :md5sum-) "539bb734f7c2fcc14d9583fba5503ba7")
(setf (get std_srvs::GetUint32ArrayWithTitle :datatype-) "std_srvs/GetUint32ArrayWithTitle")
(setf (get std_srvs::GetUint32ArrayWithTitle :request) std_srvs::GetUint32ArrayWithTitleRequest)
(setf (get std_srvs::GetUint32ArrayWithTitle :response) std_srvs::GetUint32ArrayWithTitleResponse)

(defmethod std_srvs::GetUint32ArrayWithTitleRequest
  (:response () (instance std_srvs::GetUint32ArrayWithTitleResponse :init)))

(setf (get std_srvs::GetUint32ArrayWithTitleRequest :md5sum-) "539bb734f7c2fcc14d9583fba5503ba7")
(setf (get std_srvs::GetUint32ArrayWithTitleRequest :datatype-) "std_srvs/GetUint32ArrayWithTitleRequest")
(setf (get std_srvs::GetUint32ArrayWithTitleRequest :definition-)
      "string title
---
uint32[]  data    # array of data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")

(setf (get std_srvs::GetUint32ArrayWithTitleResponse :md5sum-) "539bb734f7c2fcc14d9583fba5503ba7")
(setf (get std_srvs::GetUint32ArrayWithTitleResponse :datatype-) "std_srvs/GetUint32ArrayWithTitleResponse")
(setf (get std_srvs::GetUint32ArrayWithTitleResponse :definition-)
      "string title
---
uint32[]  data    # array of data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
")



(provide :std_srvs/GetUint32ArrayWithTitle "539bb734f7c2fcc14d9583fba5503ba7")


