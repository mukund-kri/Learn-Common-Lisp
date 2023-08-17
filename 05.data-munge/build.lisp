(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :data-munge)
(asdf:make :data-munge)
