(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :functions)
(asdf:make :functions)
