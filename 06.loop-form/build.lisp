(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :loop-form)
(asdf:make :loop-form)
