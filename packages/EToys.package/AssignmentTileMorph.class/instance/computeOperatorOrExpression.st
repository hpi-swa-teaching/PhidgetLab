initialization
computeOperatorOrExpression
	"Compute the operator or expression to use, and set the wording correectly on the tile face"

	| aSuffix wording anInterface getter doc |
	operatorOrExpression := (assignmentRoot, assignmentSuffix) asSymbol.
	aSuffix := self currentVocabulary translatedWordingFor:  assignmentSuffix.
	getter := assignmentRoot asGetterSelector.
	anInterface := self currentVocabulary methodInterfaceAt: getter ifAbsent: [Vocabulary eToyVocabulary methodInterfaceAt: getter ifAbsent: [nil]].
	wording := anInterface ifNotNil: [anInterface wording] ifNil: [assignmentRoot copyWithout: $:].
	(anInterface notNil and: [(doc := anInterface documentation) notNil])
		ifTrue:
			[self setBalloonText: doc].
	operatorReadoutString := wording translated, ' ', aSuffix.
 	self line1: operatorReadoutString.
	self addArrowsIfAppropriate