;;;; Learn the "loop" form

(defpackage loop-form
  (:use :cl))

(in-package loop-form)

;; for loop in other languages
(loop for x in '(1 2 4)
      doing (format t "~a~%" x))

;; while loop in other languages
(defvar x 10)
(setf x 10)
(loop while (> x 0)
      do (progn
	   (setf x (decf x))
	   (format t "~a~%" x))
      collect x)

(defun main ()
   (format t "Hello, World!~%"))
