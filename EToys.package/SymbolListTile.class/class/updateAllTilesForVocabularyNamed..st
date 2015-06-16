customevents-updating
updateAllTilesForVocabularyNamed: aVocabularyName
	"The choices in the Vocabulary named aVocabularyName may have changed.
	Update my subinstances if necessary to reflect the changes."

	 (self allSubInstances select: [ :ea | ea dataType = aVocabularyName ])
		do: [ :ea | ea updateChoices ] 