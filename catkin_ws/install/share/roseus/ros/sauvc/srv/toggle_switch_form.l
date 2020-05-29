;; Auto-generated. Do not edit!


(when (boundp 'sauvc::toggle_switch_form)
  (if (not (find-package "SAUVC"))
    (make-package "SAUVC"))
  (shadow 'toggle_switch_form (find-package "SAUVC")))
(unless (find-package "SAUVC::TOGGLE_SWITCH_FORM")
  (make-package "SAUVC::TOGGLE_SWITCH_FORM"))
(unless (find-package "SAUVC::TOGGLE_SWITCH_FORMREQUEST")
  (make-package "SAUVC::TOGGLE_SWITCH_FORMREQUEST"))
(unless (find-package "SAUVC::TOGGLE_SWITCH_FORMRESPONSE")
  (make-package "SAUVC::TOGGLE_SWITCH_FORMRESPONSE"))

(in-package "ROS")





(defclass sauvc::toggle_switch_formRequest
  :super ros::object
  :slots (_data ))

(defmethod sauvc::toggle_switch_formRequest
  (:init
   (&key
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass sauvc::toggle_switch_formResponse
  :super ros::object
  :slots (_result _message ))

(defmethod sauvc::toggle_switch_formResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result __result)
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sauvc::toggle_switch_form
  :super ros::object
  :slots ())

(setf (get sauvc::toggle_switch_form :md5sum-) "caaeaa00099342c954da62e3798f80e9")
(setf (get sauvc::toggle_switch_form :datatype-) "sauvc/toggle_switch_form")
(setf (get sauvc::toggle_switch_form :request) sauvc::toggle_switch_formRequest)
(setf (get sauvc::toggle_switch_form :response) sauvc::toggle_switch_formResponse)

(defmethod sauvc::toggle_switch_formRequest
  (:response () (instance sauvc::toggle_switch_formResponse :init)))

(setf (get sauvc::toggle_switch_formRequest :md5sum-) "caaeaa00099342c954da62e3798f80e9")
(setf (get sauvc::toggle_switch_formRequest :datatype-) "sauvc/toggle_switch_formRequest")
(setf (get sauvc::toggle_switch_formRequest :definition-)
      "bool data
---
bool result
string message

")

(setf (get sauvc::toggle_switch_formResponse :md5sum-) "caaeaa00099342c954da62e3798f80e9")
(setf (get sauvc::toggle_switch_formResponse :datatype-) "sauvc/toggle_switch_formResponse")
(setf (get sauvc::toggle_switch_formResponse :definition-)
      "bool data
---
bool result
string message

")



(provide :sauvc/toggle_switch_form "caaeaa00099342c954da62e3798f80e9")


