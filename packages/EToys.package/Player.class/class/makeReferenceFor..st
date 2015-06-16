namespace
makeReferenceFor: anObject

	| stem otherNames i partName |
	stem := anObject class name.
	(stem size > 5 and: [stem endsWith: 'Morph'])
		ifTrue: [stem := stem copyFrom: 1 to: stem size - 5].
	stem := stem first asLowercase asString, stem allButFirst.
	otherNames := self class allInstVarNames.
	i := 1.
	[otherNames includes: (partName := stem, i printString)]
		whileTrue: [i := i + 1].
	self class addInstVarName: partName.
	self instVarAt: self class instSize put: anObject.  "assumes added as last field"

	self compileReferenceAccessorFor: partName.
	^ self referenceAccessorSelectorFor: partName