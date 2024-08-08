;;;; ***********************************************************************
;;;;
;;;; Name:          net.bardcode.singleton.asd
;;;; Project:       net.bardcode.singleton
;;;; Purpose:       classes that have only one instance
;;;; Author:        mikel evins
;;;; Copyright:     2024 by mikel evins
;;;;
;;;; ***********************************************************************

(asdf:defsystem #:net.bardcode.singleton
  :description "Classes that have only one instance"
  :author "mikel evins <mikel@evins.net>"
  :license  "Apache 2.0"
  :version (:read-file-form "version.lisp")
  :serial t
  :depends-on (:closer-mop)
  :components ((:file "package")
               (:file "singleton")))

;;; (asdf:load-system :net.bardcode.singleton)
;;; (ql:quickload :net.bardcode.singleton)
