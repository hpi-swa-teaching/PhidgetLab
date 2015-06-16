player protocol
compileAllAccessors

	info keys do: [:k |
		(#(who x y heading color visible) includes: k) ifFalse: [
			self compileVectorInstVarAccessorsFor: k.
		].
	].
