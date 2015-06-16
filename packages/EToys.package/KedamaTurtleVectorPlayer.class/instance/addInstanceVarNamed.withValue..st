player protocol
addInstanceVarNamed: aName withValue: aValue

	| newArray |
	(aValue isKindOf: Number) ifTrue: [
		newArray := KedamaFloatArray new: self size.
	].
	(aValue isKindOf: Color) ifTrue: [
		newArray := WordArray new: self size.
	].
	(aValue isKindOf: Player) ifTrue: [
		newArray := Array new: self size.
	].

	arrays := arrays, newArray.
	info at: aName asSymbol put: arrays size.
