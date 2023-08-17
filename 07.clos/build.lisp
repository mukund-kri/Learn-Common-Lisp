(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :clos)
(asdf:make :clos)
