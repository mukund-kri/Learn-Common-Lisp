(defsystem "config-reader"
  :depends-on (#:cl-yaml)
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "config-reader"
  :entry-point "config-reader::main")
