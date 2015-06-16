initialization
updateWordingToMatchVocabulary
	"The current vocabulary has changed; change the wording on my face, if appropriate"

	| aMethodInterface |
	type == #operator ifTrue:
		[self line1: (self currentVocabulary tileWordingForSelector: operatorOrExpression).
		(ScriptingSystem doesOperatorWantArrows: operatorOrExpression)
			ifTrue: [self addArrows].
		self updateLiteralLabel.

		aMethodInterface := self currentVocabulary methodInterfaceAt: operatorOrExpression
			ifAbsent: [
				Vocabulary eToyVocabulary
					methodInterfaceAt: operatorOrExpression ifAbsent: [^ self]].
		self setBalloonText: aMethodInterface documentation.
	].

	type == #objRef ifTrue: [
		self isPossessive
			ifTrue: [self bePossessive]
			ifFalse: [self labelMorph contents: self actualObject nameForViewer asSymbol translated]].

		"submorphs last setBalloonText: aMethodInterface documentation"