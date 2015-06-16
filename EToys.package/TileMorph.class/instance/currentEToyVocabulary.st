misc
currentEToyVocabulary
	"Answer the etoy vocabulary that pertains"
	| aVocab |
	^ (aVocab := self currentVocabulary) isEToyVocabulary
		ifTrue: [aVocab]
		ifFalse: [Vocabulary eToyVocabulary]