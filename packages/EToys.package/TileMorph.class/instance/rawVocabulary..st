initialization
rawVocabulary: aVocabulary 
	"Set the receiver's vocabulary, without side effects."

	vocabularySymbol := (aVocabulary isKindOf: Symbol) 
				ifTrue: [aVocabulary]
				ifFalse: [aVocabulary vocabularyName]