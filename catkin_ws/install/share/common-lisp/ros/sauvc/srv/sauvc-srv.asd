
(cl:in-package :asdf)

(defsystem "sauvc-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "toggle_switch_form" :depends-on ("_package_toggle_switch_form"))
    (:file "_package_toggle_switch_form" :depends-on ("_package"))
  ))