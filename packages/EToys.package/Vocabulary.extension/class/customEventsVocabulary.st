*eToys-customevents-custom events
customEventsVocabulary
	"Vocabulary customEventsVocabulary"
	^(self vocabularyNamed: #CustomEvents)
		ifNil: [ self addCustomEventsVocabulary ]
