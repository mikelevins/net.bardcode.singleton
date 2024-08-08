;;;; ***********************************************************************
;;;;
;;;; Name:          package.lisp
;;;; Project:       net.bardcode.singleton
;;;; Purpose:       package definition
;;;; Author:        mikel evins
;;;; Copyright:     2024 by mikel evins
;;;;
;;;; ***********************************************************************

(defpackage #:net.bardcode.singleton
  (:use #:cl)
  (:nicknames :singleton)
  (:export
   #:singleton
   #:instance
   #:reset-singleton))



