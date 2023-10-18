
(cl:in-package :asdf)

(defsystem "glass_ladder-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ladder" :depends-on ("_package_ladder"))
    (:file "_package_ladder" :depends-on ("_package"))
  ))