(pushnew (uiop:getcwd) quicklisp:*local-project-directories*)
(ql:quickload :data-munging)
(asdf:make :data-munging)
