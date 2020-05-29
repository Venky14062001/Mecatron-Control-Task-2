; Auto-generated. Do not edit!


(cl:in-package sauvc-srv)


;//! \htmlinclude toggle_switch_form-request.msg.html

(cl:defclass <toggle_switch_form-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass toggle_switch_form-request (<toggle_switch_form-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toggle_switch_form-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toggle_switch_form-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sauvc-srv:<toggle_switch_form-request> is deprecated: use sauvc-srv:toggle_switch_form-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <toggle_switch_form-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sauvc-srv:data-val is deprecated.  Use sauvc-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toggle_switch_form-request>) ostream)
  "Serializes a message object of type '<toggle_switch_form-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toggle_switch_form-request>) istream)
  "Deserializes a message object of type '<toggle_switch_form-request>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toggle_switch_form-request>)))
  "Returns string type for a service object of type '<toggle_switch_form-request>"
  "sauvc/toggle_switch_formRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_switch_form-request)))
  "Returns string type for a service object of type 'toggle_switch_form-request"
  "sauvc/toggle_switch_formRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toggle_switch_form-request>)))
  "Returns md5sum for a message object of type '<toggle_switch_form-request>"
  "caaeaa00099342c954da62e3798f80e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toggle_switch_form-request)))
  "Returns md5sum for a message object of type 'toggle_switch_form-request"
  "caaeaa00099342c954da62e3798f80e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toggle_switch_form-request>)))
  "Returns full string definition for message of type '<toggle_switch_form-request>"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toggle_switch_form-request)))
  "Returns full string definition for message of type 'toggle_switch_form-request"
  (cl:format cl:nil "bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toggle_switch_form-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toggle_switch_form-request>))
  "Converts a ROS message object to a list"
  (cl:list 'toggle_switch_form-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude toggle_switch_form-response.msg.html

(cl:defclass <toggle_switch_form-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass toggle_switch_form-response (<toggle_switch_form-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <toggle_switch_form-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'toggle_switch_form-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sauvc-srv:<toggle_switch_form-response> is deprecated: use sauvc-srv:toggle_switch_form-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <toggle_switch_form-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sauvc-srv:result-val is deprecated.  Use sauvc-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <toggle_switch_form-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sauvc-srv:message-val is deprecated.  Use sauvc-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <toggle_switch_form-response>) ostream)
  "Serializes a message object of type '<toggle_switch_form-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <toggle_switch_form-response>) istream)
  "Deserializes a message object of type '<toggle_switch_form-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<toggle_switch_form-response>)))
  "Returns string type for a service object of type '<toggle_switch_form-response>"
  "sauvc/toggle_switch_formResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_switch_form-response)))
  "Returns string type for a service object of type 'toggle_switch_form-response"
  "sauvc/toggle_switch_formResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<toggle_switch_form-response>)))
  "Returns md5sum for a message object of type '<toggle_switch_form-response>"
  "caaeaa00099342c954da62e3798f80e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'toggle_switch_form-response)))
  "Returns md5sum for a message object of type 'toggle_switch_form-response"
  "caaeaa00099342c954da62e3798f80e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<toggle_switch_form-response>)))
  "Returns full string definition for message of type '<toggle_switch_form-response>"
  (cl:format cl:nil "bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'toggle_switch_form-response)))
  "Returns full string definition for message of type 'toggle_switch_form-response"
  (cl:format cl:nil "bool result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <toggle_switch_form-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <toggle_switch_form-response>))
  "Converts a ROS message object to a list"
  (cl:list 'toggle_switch_form-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'toggle_switch_form)))
  'toggle_switch_form-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'toggle_switch_form)))
  'toggle_switch_form-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'toggle_switch_form)))
  "Returns string type for a service object of type '<toggle_switch_form>"
  "sauvc/toggle_switch_form")