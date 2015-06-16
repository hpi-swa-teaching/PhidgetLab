macpal
currentVocabulary
	"Answer the current vocabulary"

	vocabulary "fix up old strutures"
		ifNotNil: 
			[vocabularySymbol := vocabulary vocabularyName.
			vocabulary := nil].

	^ vocabularySymbol
		ifNotNil:
			[Vocabulary vocabularyNamed: vocabularySymbol]
		ifNil:
			[super currentVocabulary]
