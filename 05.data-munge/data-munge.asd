(asdf:defsystem "data-munge"
  :depends-on (#:cl-csv)
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "data-munge"
  :entry-point "data-munge::main")
