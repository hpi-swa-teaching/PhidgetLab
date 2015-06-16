card access
deleteCard: aCard
	"Delete the current card from the stack."

	self privateCards size = 1 ifTrue: [^ Beeper beep].
	(aCard == self currentCard) ifTrue: [^ self deleteCard].

	self privateCards remove: aCard ifAbsent: []