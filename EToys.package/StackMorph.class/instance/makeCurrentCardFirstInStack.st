card access
makeCurrentCardFirstInStack
	"Move the current card such that it becomes the first card in the stack"

	| aCard |
	aCard := self currentCard.
	self privateCards remove: aCard ifAbsent: [];
		addFirst: aCard.
	self currentPage flash