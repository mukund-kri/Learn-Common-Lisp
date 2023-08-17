(defsystem "data-munging"
  :depends-on ("cl-csv" "iterate")
  :components ((:module "src"
		:components
		((:file "main"))))
  :build-operation "asdf:program-op"
  :build-pathname "data-munging"
  :entry-point "data-munging::main")
