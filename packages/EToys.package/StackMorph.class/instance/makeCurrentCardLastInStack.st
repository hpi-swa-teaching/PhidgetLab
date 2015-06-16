card access
makeCurrentCardLastInStack
	"Move the current card such that it becomes the last card in the stack"

	| aCard |
	aCard := self currentCard.
	self privateCards remove: aCard ifAbsent: [];
		addLast: aCard.
	self currentPage flash