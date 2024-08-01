; Auto-generated. Do not edit!


(cl:in-package server-srv)


;//! \htmlinclude Addints-request.msg.html

(cl:defclass <Addints-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass Addints-request (<Addints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-srv:<Addints-request> is deprecated: use server-srv:Addints-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <Addints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-srv:num1-val is deprecated.  Use server-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <Addints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-srv:num2-val is deprecated.  Use server-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addints-request>) ostream)
  "Serializes a message object of type '<Addints-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addints-request>) istream)
  "Deserializes a message object of type '<Addints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addints-request>)))
  "Returns string type for a service object of type '<Addints-request>"
  "server/AddintsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addints-request)))
  "Returns string type for a service object of type 'Addints-request"
  "server/AddintsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addints-request>)))
  "Returns md5sum for a message object of type '<Addints-request>"
  "48d0f254fecb160bea4c43b66d25c762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addints-request)))
  "Returns md5sum for a message object of type 'Addints-request"
  "48d0f254fecb160bea4c43b66d25c762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addints-request>)))
  "Returns full string definition for message of type '<Addints-request>"
  (cl:format cl:nil "int64 num1~%int64 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addints-request)))
  "Returns full string definition for message of type 'Addints-request"
  (cl:format cl:nil "int64 num1~%int64 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addints-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Addints-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude Addints-response.msg.html

(cl:defclass <Addints-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass Addints-response (<Addints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Addints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Addints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-srv:<Addints-response> is deprecated: use server-srv:Addints-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <Addints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-srv:sum-val is deprecated.  Use server-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Addints-response>) ostream)
  "Serializes a message object of type '<Addints-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Addints-response>) istream)
  "Deserializes a message object of type '<Addints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Addints-response>)))
  "Returns string type for a service object of type '<Addints-response>"
  "server/AddintsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addints-response)))
  "Returns string type for a service object of type 'Addints-response"
  "server/AddintsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Addints-response>)))
  "Returns md5sum for a message object of type '<Addints-response>"
  "48d0f254fecb160bea4c43b66d25c762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Addints-response)))
  "Returns md5sum for a message object of type 'Addints-response"
  "48d0f254fecb160bea4c43b66d25c762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Addints-response>)))
  "Returns full string definition for message of type '<Addints-response>"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Addints-response)))
  "Returns full string definition for message of type 'Addints-response"
  (cl:format cl:nil "int64 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Addints-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Addints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Addints-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Addints)))
  'Addints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Addints)))
  'Addints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Addints)))
  "Returns string type for a service object of type '<Addints>"
  "server/Addints")