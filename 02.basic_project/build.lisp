(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :basic-project)
(asdf:make :basic-project)
