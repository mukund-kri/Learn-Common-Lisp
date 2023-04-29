(defsystem "functional-1"
  :depends-on ()
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "functional-1"
  :entry-point "functional-1::main")
