
(cl:in-package :asdf)

(defsystem "server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Addints" :depends-on ("_package_Addints"))
    (:file "_package_Addints" :depends-on ("_package"))
  ))