initialization
switchToVocabulary: aVocabulary
	"Make the receiver show categories and methods as dictated by aVocabulary.  If this constitutes a switch, then wipe out existing category viewers, which may be showing the wrong thing."

	self adoptVocabulary: aVocabulary.  "for benefit of submorphs"
	self setProperty: #currentVocabularySymbol toValue: aVocabulary vocabularyName.
	((scriptedPlayer isPlayerLike) and: [self isUniversalTiles not]) ifTrue:
		[scriptedPlayer allScriptEditors do:
			[:aScriptEditor |
				aScriptEditor adoptVocabulary: aVocabulary]]