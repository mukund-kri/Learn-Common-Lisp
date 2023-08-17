(defsystem "clos"
  :depends-on ()
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "clos"
  :entry-point "clos::main")
