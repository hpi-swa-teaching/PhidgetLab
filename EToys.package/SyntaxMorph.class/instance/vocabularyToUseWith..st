vocabulary
vocabularyToUseWith: aValue 
	"Answer a vocabulary to use with the given value"

	(aValue isNumber) ifTrue: [^Vocabulary numberVocabulary].
	(aValue isKindOf: Time) ifTrue: [^Vocabulary vocabularyForClass: Time].
	(aValue isString) ifTrue: [^Vocabulary vocabularyForClass: String].
	aValue class isUniClass ifTrue: [^Vocabulary eToyVocabulary].
	^self currentVocabulary