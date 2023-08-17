;;;; My exporation of the 'do' form.
;;;; main source of information is Lispworks hyperspec

(defpackage do-form
  (:use :cl))

(in-package do-form)


(defun main ()
  (format t "Hello, World!~%"))


;; simplest do form example

(do ((x 10 (1+ x)))
    ((= x 20))
  (format t "~A~%" x))

;; do also supports breaking the iteration with `return`
(do ((x 10 (1+ x)))
    (nil)  ; infinite loop
  (if (= x 20) (return))
  (format t "~A~%" x))


;; the bindings are done in sequence rather than in parallel
(do* ((x 0 (1+ x))
      (y 0 (+ x y)))
     ((= x 20))
  (format t "~A ~A~%" x y))

;; do/do* also supports returning values
(do* ((x 10 (1+ x))
      (sum 0 (+ sum x)))
     ((= x 20)  ; stop at 20
      sum))     ; return the sum
  
(defun update (counts value)
  (setf (gethash value counts) (1+ (gethash value counts 0)))
  counts)

(defun count-ele (lst)
  (format t "In function")
  (do* ((curr-list lst (cdr lst))
	(ele (car curr-list) (car curr-list)))
       ;; (counts (make-hash-table) (update counts ele)))
       ((endp curr-list)))
  (format t "~A~%" curr-list))



(count-ele '(1 1 2 2 3))
       
