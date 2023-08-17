(defsystem "functions"
  :depends-on ()
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "functions"
  :entry-point "functions::main")
