(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :do-form)
(asdf:make :do-form)
