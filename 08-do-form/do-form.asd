(defsystem "do-form"
  :depends-on ()
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "do-form"
  :entry-point "do-form::main")
