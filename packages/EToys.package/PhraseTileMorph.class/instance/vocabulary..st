initialization
vocabulary: aVocab 
	"Set the vocabulary"

	vocabularySymbol := (aVocab isKindOf: Symbol) 
				ifTrue: [aVocab]
				ifFalse: [aVocab vocabularyName]