(defpackage functional-1
  (:use :cl))

(in-package functional-1)


;; square all the elements in a list with map function
(map
 'list
 #'(lambda (x) (* x x))
 '(1 2 3))

;; sum all the elements in a list with reduce function
(reduce #'+ '(1 2 3) :initial-value 6)


(defun main ()
   (format t "Hello, World!~%"))
