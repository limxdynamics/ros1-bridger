;; Auto-generated. Do not edit!


(when (boundp 'upper_body::servoJ)
  (if (not (find-package "UPPER_BODY"))
    (make-package "UPPER_BODY"))
  (shadow 'servoJ (find-package "UPPER_BODY")))
(unless (find-package "UPPER_BODY::SERVOJ")
  (make-package "UPPER_BODY::SERVOJ"))

(in-package "ROS")
;;//! \htmlinclude servoJ.msg.html


(defclass upper_body::servoJ
  :super ros::object
  :slots (_joints ))

(defmethod upper_body::servoJ
  (:init
   (&key
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints
    (* 4    (length _joints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get upper_body::servoJ :md5sum-) "e2a0e438b445b98def0f0ba6a2a85f58")
(setf (get upper_body::servoJ :datatype-) "upper_body/servoJ")
(setf (get upper_body::servoJ :definition-)
      "float32[] joints # unit: rad
")



(provide :upper_body/servoJ "e2a0e438b445b98def0f0ba6a2a85f58")


