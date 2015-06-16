costume
wearCostumeOfName: aName
	| classToUse |
	classToUse := Smalltalk at: (aName, 'Morph') asSymbol ifAbsent: 
		[Smalltalk at: aName asSymbol].
	self wearCostumeOfClass: classToUse