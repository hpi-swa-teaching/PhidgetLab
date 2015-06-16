player protocol
addInstanceVarVectorNamed: aName withValue: aValue

	| newArray |
	newArray := KedamaFloatArray new: self size.
	arrays := arrays, (Array with: newArray).
	newArray atAllPut: aValue.
	info at: aName asSymbol put: arrays size.
	types at: arrays size put: #Number.
