(defsystem "loop-form"
  :depends-on ()
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "loop-form"
  :entry-point "loop-form::main")
