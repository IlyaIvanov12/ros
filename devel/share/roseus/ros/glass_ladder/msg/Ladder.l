;; Auto-generated. Do not edit!


(when (boundp 'glass_ladder::Ladder)
  (if (not (find-package "GLASS_LADDER"))
    (make-package "GLASS_LADDER"))
  (shadow 'Ladder (find-package "GLASS_LADDER")))
(unless (find-package "GLASS_LADDER::LADDER")
  (make-package "GLASS_LADDER::LADDER"))

(in-package "ROS")
;;//! \htmlinclude Ladder.msg.html


(defclass glass_ladder::Ladder
  :super ros::object
  :slots (_msg ))

(defmethod glass_ladder::Ladder
  (:init
   (&key
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _msg (string __msg))
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get glass_ladder::Ladder :md5sum-) "7d96ed730776804754140b85e64c862e")
(setf (get glass_ladder::Ladder :datatype-) "glass_ladder/Ladder")
(setf (get glass_ladder::Ladder :definition-)
      "string msg
")



(provide :glass_ladder/Ladder "7d96ed730776804754140b85e64c862e")


