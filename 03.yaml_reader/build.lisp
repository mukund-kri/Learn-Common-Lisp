(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :config-reader)
(asdf:make :config-reader)
