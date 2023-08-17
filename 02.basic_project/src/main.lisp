(defpackage basic-project
  (:use :cl))

(in-package basic-project)

(defvar x 10)

(ql:quickload :clack)
(ql:quickload :ningle)

(defvar app (make-instance 'ningle:app))

(setf (ningle:route app "/hello")
      "Hello Ningle")

(defun main ()
  (clack:clackup app))

(ql:quickload :iterate)

(iterate:iterate (iterate:for i in '(1 2 3))
  (format t "~A " i))


