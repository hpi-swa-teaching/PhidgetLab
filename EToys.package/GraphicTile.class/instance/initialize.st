initialization
initialize
"initialize the state of the receiver"
	super initialize.
""
	type := #literal.
	self
		useForm: (ScriptingSystem formAtKey: #Menu)