layout
addString: literalOrVarName special: aBoolean

	| answer |
	"Create and return an UpdatingStringMorph containing the value.  Use an UpdatingStringMorph, so it can inform its owner when it has been edited. Keep the getSelector being nil"

	answer := (self anUpdatingStringMorphWith: literalOrVarName special: aBoolean)
		target: self;
		putSelector: #acceptIgnoring:;
		useStringFormat.

	^answer
