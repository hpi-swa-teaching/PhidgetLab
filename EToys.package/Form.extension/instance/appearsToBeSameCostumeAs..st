*Etoys-testing
appearsToBeSameCostumeAs: anotherForm

	(anotherForm isKindOf: self class) ifFalse: [^false].
	anotherForm depth = self depth ifFalse: [^false].
	^anotherForm bits = bits
