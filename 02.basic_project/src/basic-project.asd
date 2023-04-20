(defsystem "basic-project"
  :depends-on (#:clack
	       #:ningle)
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "basic-project"
  :entry-point "basic-project::main")
