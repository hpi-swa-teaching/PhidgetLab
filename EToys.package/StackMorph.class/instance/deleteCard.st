card access
deleteCard
	"Delete the current card from the stack"

	| aCard |
	aCard := self currentCard.
	self privateCards size = 1 ifTrue: [^ Beeper beep].
	(self confirm: 'Really delete this card and all of its data?' translated) ifTrue:
		[self goToNextCardInStack.
		self privateCards remove: aCard].