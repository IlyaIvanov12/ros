; Auto-generated. Do not edit!


(cl:in-package glass_ladder-srv)


;//! \htmlinclude ladder-request.msg.html

(cl:defclass <ladder-request> (roslisp-msg-protocol:ros-message)
  ((step
    :reader step
    :initarg :step
    :type cl:string
    :initform ""))
)

(cl:defclass ladder-request (<ladder-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ladder-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ladder-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name glass_ladder-srv:<ladder-request> is deprecated: use glass_ladder-srv:ladder-request instead.")))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <ladder-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader glass_ladder-srv:step-val is deprecated.  Use glass_ladder-srv:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ladder-request>) ostream)
  "Serializes a message object of type '<ladder-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'step))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ladder-request>) istream)
  "Deserializes a message object of type '<ladder-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'step) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ladder-request>)))
  "Returns string type for a service object of type '<ladder-request>"
  "glass_ladder/ladderRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ladder-request)))
  "Returns string type for a service object of type 'ladder-request"
  "glass_ladder/ladderRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ladder-request>)))
  "Returns md5sum for a message object of type '<ladder-request>"
  "d762345fb551f3386e8ace5b623f571a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ladder-request)))
  "Returns md5sum for a message object of type 'ladder-request"
  "d762345fb551f3386e8ace5b623f571a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ladder-request>)))
  "Returns full string definition for message of type '<ladder-request>"
  (cl:format cl:nil "string step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ladder-request)))
  "Returns full string definition for message of type 'ladder-request"
  (cl:format cl:nil "string step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ladder-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'step))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ladder-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ladder-request
    (cl:cons ':step (step msg))
))
;//! \htmlinclude ladder-response.msg.html

(cl:defclass <ladder-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass ladder-response (<ladder-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ladder-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ladder-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name glass_ladder-srv:<ladder-response> is deprecated: use glass_ladder-srv:ladder-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ladder-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader glass_ladder-srv:msg-val is deprecated.  Use glass_ladder-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ladder-response>) ostream)
  "Serializes a message object of type '<ladder-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ladder-response>) istream)
  "Deserializes a message object of type '<ladder-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ladder-response>)))
  "Returns string type for a service object of type '<ladder-response>"
  "glass_ladder/ladderResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ladder-response)))
  "Returns string type for a service object of type 'ladder-response"
  "glass_ladder/ladderResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ladder-response>)))
  "Returns md5sum for a message object of type '<ladder-response>"
  "d762345fb551f3386e8ace5b623f571a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ladder-response)))
  "Returns md5sum for a message object of type 'ladder-response"
  "d762345fb551f3386e8ace5b623f571a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ladder-response>)))
  "Returns full string definition for message of type '<ladder-response>"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ladder-response)))
  "Returns full string definition for message of type 'ladder-response"
  (cl:format cl:nil "string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ladder-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ladder-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ladder-response
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ladder)))
  'ladder-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ladder)))
  'ladder-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ladder)))
  "Returns string type for a service object of type '<ladder>"
  "glass_ladder/ladder")