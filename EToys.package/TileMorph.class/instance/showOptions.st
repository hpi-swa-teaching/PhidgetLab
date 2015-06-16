mouse handling
showOptions
	"The receiver is a tile that represents an operator; a click on the 
	receiver's label will pop up a menu of alternative operator choices"
	| result menuChoices |
	menuChoices := (self options first collect: [:each | each asString translated]) collect: [:each | | word | 
							word := self currentVocabulary translatedWordingFor: each asSymbol.
							word isEmpty
								ifTrue: ['<-']
								ifFalse: [word]].
	result := UIManager default chooseFrom: menuChoices values: self options first.
	result 
		ifNotNil: [self value: result.
			self scriptEdited]