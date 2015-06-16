macpal
currentVocabulary
	"Answer the current vocabulary associated with the receiver.  If none is yet set, determine an appropriate vocabulary and cache it within my properties dictionary."

	| aVocab aSym |
	aSym := self valueOfProperty: #currentVocabularySymbol ifAbsent: [nil].
	aSym ifNil:
		[aVocab := self valueOfProperty: #currentVocabulary ifAbsent: [nil].
		aVocab ifNotNil:
			[aSym := aVocab vocabularyName.
			self removeProperty: #currentVocabulary.
			self setProperty: #currentVocabularySymbol toValue: aSym]].

	aSym ifNotNil:
		[^ Vocabulary vocabularyNamed: aSym].
	aVocab := super currentVocabulary.
	self setProperty: #currentVocabularySymbol toValue: aVocab vocabularyName.
	^ aVocab