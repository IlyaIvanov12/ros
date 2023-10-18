
(cl:in-package :asdf)

(defsystem "glass_ladder-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ladder" :depends-on ("_package_Ladder"))
    (:file "_package_Ladder" :depends-on ("_package"))
  ))