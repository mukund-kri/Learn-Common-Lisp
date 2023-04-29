(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :functional-1)
(asdf:make :functional-1)
