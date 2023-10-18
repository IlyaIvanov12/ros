;; Auto-generated. Do not edit!


(when (boundp 'glass_ladder::ladder)
  (if (not (find-package "GLASS_LADDER"))
    (make-package "GLASS_LADDER"))
  (shadow 'ladder (find-package "GLASS_LADDER")))
(unless (find-package "GLASS_LADDER::LADDER")
  (make-package "GLASS_LADDER::LADDER"))
(unless (find-package "GLASS_LADDER::LADDERREQUEST")
  (make-package "GLASS_LADDER::LADDERREQUEST"))
(unless (find-package "GLASS_LADDER::LADDERRESPONSE")
  (make-package "GLASS_LADDER::LADDERRESPONSE"))

(in-package "ROS")





(defclass glass_ladder::ladderRequest
  :super ros::object
  :slots (_step ))

(defmethod glass_ladder::ladderRequest
  (:init
   (&key
    ((:step __step) "")
    )
   (send-super :init)
   (setq _step (string __step))
   self)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:serialization-length
   ()
   (+
    ;; string _step
    4 (length _step)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _step
       (write-long (length _step) s) (princ _step s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _step
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _step (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass glass_ladder::ladderResponse
  :super ros::object
  :slots (_msg ))

(defmethod glass_ladder::ladderResponse
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

(defclass glass_ladder::ladder
  :super ros::object
  :slots ())

(setf (get glass_ladder::ladder :md5sum-) "d762345fb551f3386e8ace5b623f571a")
(setf (get glass_ladder::ladder :datatype-) "glass_ladder/ladder")
(setf (get glass_ladder::ladder :request) glass_ladder::ladderRequest)
(setf (get glass_ladder::ladder :response) glass_ladder::ladderResponse)

(defmethod glass_ladder::ladderRequest
  (:response () (instance glass_ladder::ladderResponse :init)))

(setf (get glass_ladder::ladderRequest :md5sum-) "d762345fb551f3386e8ace5b623f571a")
(setf (get glass_ladder::ladderRequest :datatype-) "glass_ladder/ladderRequest")
(setf (get glass_ladder::ladderRequest :definition-)
      "string step
---
string msg
")

(setf (get glass_ladder::ladderResponse :md5sum-) "d762345fb551f3386e8ace5b623f571a")
(setf (get glass_ladder::ladderResponse :datatype-) "glass_ladder/ladderResponse")
(setf (get glass_ladder::ladderResponse :definition-)
      "string step
---
string msg
")



(provide :glass_ladder/ladder "d762345fb551f3386e8ace5b623f571a")


