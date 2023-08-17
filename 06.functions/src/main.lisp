(defpackage functions
  (:use :cl))

(in-package functions)


;; Simple var-args
(defun vararg-fun (&rest args)
  (format t "The arguments: ~a~%" args))

;; Simple keyword arguments with default values
(defun keyword-args (&key (a 1) (b "string"))
  (format t "Key a: ~A, Key b: ~A~%" a b))

;; Call keyword-args function
;; No args, all from default values
(keyword-args)
;; Send some arguments
(keyword-args :a  20 :b "Mukund")

  

(defun main ()
   (format t "Hello, World!~%"))

(do
 ((x 10 +1))
 ((> x 20))
  (format t "~A " x))
