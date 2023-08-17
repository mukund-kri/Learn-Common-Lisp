(defpackage data-munging
  (:use :cl :cl-csv :iterate))

(in-package data-munging)

(ql:quickload "cl-csv")

#|
(cl-csv:read-csv #P"../data/mca.min.csv"
		 :skip-first-p 1
		 
		 :map-fn #'(lambda (row)
			     (parse-integer (nth 8 row))))
|#

(defun get-paidup-cap ()
  "Extract the paidup capital from csv"
  (iter (for row in-csv #P"../data/mca.min.csv" skipping-header t)
    (collect (parse-integer (nth 8 row)))))


(setf cap 1000000)

(defun label-cap (cap)
  (cond
    ((< cap 100000) "<1L")
    ((< cap 1000000) "1L - 10L")
    ((< cap 10000000) "10L - 1Cr")
    ((< cap 100000000) "1Cr - 10Cr")
    (t ">= 10Cr")))

(defun accumulate (lst)
  (let ((table (make-hash-table)))
    (loop for e in lst
	  do  (incf (gethash e table 0)))
    table))

(defun prob1 ()
  (accumulate (map 'list #'label-cap (get-paidup-cap))))


(loop for k being the hash-keys in (prob1) using (hash-value v)
      do (format t "~a=>~a~%" k v))
(defun main ()
   (format t "Hello, World!~%"))
