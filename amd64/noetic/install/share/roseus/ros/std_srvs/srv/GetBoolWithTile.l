;; Auto-generated. Do not edit!


(when (boundp 'std_srvs::GetBoolWithTile)
  (if (not (find-package "STD_SRVS"))
    (make-package "STD_SRVS"))
  (shadow 'GetBoolWithTile (find-package "STD_SRVS")))
(unless (find-package "STD_SRVS::GETBOOLWITHTILE")
  (make-package "STD_SRVS::GETBOOLWITHTILE"))
(unless (find-package "STD_SRVS::GETBOOLWITHTILEREQUEST")
  (make-package "STD_SRVS::GETBOOLWITHTILEREQUEST"))
(unless (find-package "STD_SRVS::GETBOOLWITHTILERESPONSE")
  (make-package "STD_SRVS::GETBOOLWITHTILERESPONSE"))

(in-package "ROS")





(defclass std_srvs::GetBoolWithTileRequest
  :super ros::object
  :slots (_title ))

(defmethod std_srvs::GetBoolWithTileRequest
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

(defclass std_srvs::GetBoolWithTileResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod std_srvs::GetBoolWithTileResponse
  (:init
   (&key
    ((:data __data) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass std_srvs::GetBoolWithTile
  :super ros::object
  :slots ())

(setf (get std_srvs::GetBoolWithTile :md5sum-) "9249c32b355c3c3418b36019eafdd629")
(setf (get std_srvs::GetBoolWithTile :datatype-) "std_srvs/GetBoolWithTile")
(setf (get std_srvs::GetBoolWithTile :request) std_srvs::GetBoolWithTileRequest)
(setf (get std_srvs::GetBoolWithTile :response) std_srvs::GetBoolWithTileResponse)

(defmethod std_srvs::GetBoolWithTileRequest
  (:response () (instance std_srvs::GetBoolWithTileResponse :init)))

(setf (get std_srvs::GetBoolWithTileRequest :md5sum-) "9249c32b355c3c3418b36019eafdd629")
(setf (get std_srvs::GetBoolWithTileRequest :datatype-) "std_srvs/GetBoolWithTileRequest")
(setf (get std_srvs::GetBoolWithTileRequest :definition-)
      "string title
---
bool data # e.g. for hardware enabling / disabling
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get std_srvs::GetBoolWithTileResponse :md5sum-) "9249c32b355c3c3418b36019eafdd629")
(setf (get std_srvs::GetBoolWithTileResponse :datatype-) "std_srvs/GetBoolWithTileResponse")
(setf (get std_srvs::GetBoolWithTileResponse :definition-)
      "string title
---
bool data # e.g. for hardware enabling / disabling
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :std_srvs/GetBoolWithTile "9249c32b355c3c3418b36019eafdd629")


