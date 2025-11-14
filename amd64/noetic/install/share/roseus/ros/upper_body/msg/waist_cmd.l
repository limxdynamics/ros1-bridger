;; Auto-generated. Do not edit!


(when (boundp 'upper_body::waist_cmd)
  (if (not (find-package "UPPER_BODY"))
    (make-package "UPPER_BODY"))
  (shadow 'waist_cmd (find-package "UPPER_BODY")))
(unless (find-package "UPPER_BODY::WAIST_CMD")
  (make-package "UPPER_BODY::WAIST_CMD"))

(in-package "ROS")
;;//! \htmlinclude waist_cmd.msg.html


(defclass upper_body::waist_cmd
  :super ros::object
  :slots (_waistCMD ))

(defmethod upper_body::waist_cmd
  (:init
   (&key
    ((:waistCMD __waistCMD) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _waistCMD __waistCMD)
   self)
  (:waistCMD
   (&optional __waistCMD)
   (if __waistCMD (setq _waistCMD __waistCMD)) _waistCMD)
  (:serialization-length
   ()
   (+
    ;; float32[3] _waistCMD
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _waistCMD
     (dotimes (i 3)
       (sys::poke (elt _waistCMD i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _waistCMD
   (dotimes (i (length _waistCMD))
     (setf (elt _waistCMD i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get upper_body::waist_cmd :md5sum-) "985c2e8a51e1fd1482af0d011eb5a7d6")
(setf (get upper_body::waist_cmd :datatype-) "upper_body/waist_cmd")
(setf (get upper_body::waist_cmd :definition-)
      "float32[3] waistCMD # [\"waist_yaw_joint\", \"waist_roll_joint\", \"waist_pitch_joint\"] units: rad

")



(provide :upper_body/waist_cmd "985c2e8a51e1fd1482af0d011eb5a7d6")


