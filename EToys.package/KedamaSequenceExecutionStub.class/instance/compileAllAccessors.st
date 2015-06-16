method management
compileAllAccessors

	turtles info keys do: [:k |
		(#(who x y heading color visible normal) includes: k) ifFalse: [
			self compileScalarInstVarAccessorsFor: k.
		].
	].
