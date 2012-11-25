;(defpackage :basic-interpreter (:use :asdf :cl))
;(in-package :basic-interpreter)

(defsystem basic
  :name "basic"
  :author "Marcus Ihlar"
  :author "Paolo Boschini"
  :version "0.1"
  :maintainer ""
  :license "BSD"
  :description "Nothing special"
  :long-description ""
  :components
  ((:file "utils" :depends-on ("globals"))
   (:file "globals")
   (:file "interpreter" :depends-on ("commands" "libs"))
   (:file "libs" :depends-on ("utils"))
   (:file "commands" :depends-on ("utils"))
   (:file "programs")))

;(:file "libs" :depends-on ("base"))