commands
chooseVocabulary
	"Put up a menu allowing the user to specify which protocol to use in this viewer"

	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Choose a vocabulary' translated.
	"aMenu addStayUpItem."  "For debugging only"
	Vocabulary allStandardVocabularies do:
		[:aVocabulary |
			(scriptedPlayer class implementsVocabulary: aVocabulary)
				ifTrue:
					[aMenu add: aVocabulary vocabularyName selector: #switchToVocabulary: argument: aVocabulary.
					aVocabulary == self currentVocabulary ifTrue:
						[aMenu lastItem color: Color blue]. 
					aMenu balloonTextForLastItem: aVocabulary documentation]].
	aMenu popUpInWorld: self currentWorld