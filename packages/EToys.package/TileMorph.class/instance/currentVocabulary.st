macpal
currentVocabulary
	"Answer the receiver's current vocabulary"

	| outer aVocab |
	vocabulary ifNotNil:  "old structures -- bring up to date"
		[vocabularySymbol := vocabulary vocabularyName.
		vocabulary := nil].
	^ vocabularySymbol
		ifNotNil:
			[Vocabulary vocabularyNamed: vocabularySymbol]
		ifNil:
			[(outer := self ownerThatIsA: StandardViewer orA: ScriptEditorMorph) 
				ifNotNil:
					[aVocab := outer currentVocabulary.
					vocabularySymbol := aVocab vocabularyName.
					aVocab]
				ifNil:
					[super currentVocabulary]]