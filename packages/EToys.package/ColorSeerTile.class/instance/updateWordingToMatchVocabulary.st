initialization
updateWordingToMatchVocabulary
	"The current vocabulary has changed; change the wording on my face, if appropriate"

	| aMethodInterface |
	aMethodInterface := self currentVocabulary methodInterfaceAt: operatorOrExpression ifAbsent: [Vocabulary eToyVocabulary methodInterfaceAt: operatorOrExpression ifAbsent: [^ self]].
	self labelMorph contents: aMethodInterface wording.
	self setBalloonText: aMethodInterface helpMessage.