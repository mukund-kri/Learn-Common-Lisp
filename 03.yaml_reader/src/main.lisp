(defpackage config-reader
  (:use :cl :cl-yaml))

(in-package config-reader)


(defun get-config ()
  (yaml:parse (uiop:read-file-line (open "~/.config/user.yaml"))))


(defun main ()
  (format t "~A" (gethash "current" (get-config))))

(defun main2 ()
  (prin1 (gethash "current" (get-config))))
