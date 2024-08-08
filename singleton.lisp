;;;; ***********************************************************************
;;;;
;;;; Name:          singleton.lisp
;;;; Project:       net.bardcode.singleton
;;;; Purpose:       classes that have only one instance
;;;; Author:        mikel evins
;;;; Copyright:     2024 by mikel evins
;;;;
;;;; ***********************************************************************

(in-package #:singleton)

(defclass singleton (cl:standard-class)
  ((instance :accessor instance :initform nil)))

;;; a standard-class may be a superclass of a singleton
(defmethod closer-mop:validate-superclass ((class singleton)(superclass cl:standard-class))
  t)

;;; a singleton may be a superclass of a singleton
(defmethod closer-mop:validate-superclass ((class singleton)(superclass singleton))
  t)

;;; a singleton may not be a superclass of a non-singleton 
(defmethod closer-mop:validate-superclass ((class cl:standard-class)(superclass singleton))
  nil)

(defmethod make-instance ((class singleton) &rest args &key)
  (or (instance class)
      (progn (setf (instance class)(call-next-method))
             (instance class))))

(defmethod reset-singleton ((class singleton))
  (setf (instance class)
        nil))
