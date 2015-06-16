macpal
currentVocabulary
	"Answer the vocabulary currently associated with the receiver"

	| aSym aVocab |
	aSym := self valueOfProperty: #currentVocabularySymbol ifAbsent: [nil].
	aSym ifNil:
		[aVocab := self valueOfProperty: #currentVocabulary ifAbsent: [nil].
		aVocab ifNotNil:
			[aSym := aVocab vocabularyName.
			self removeProperty: #currentVocabulary.
			self setProperty: #currentVocabularySymbol toValue: aSym]].
	^ aSym
		ifNotNil:
			[Vocabulary vocabularyNamed: aSym]
		ifNil:
			[(self world ifNil: [ActiveWorld]) currentVocabularyFor: scriptedPlayer]