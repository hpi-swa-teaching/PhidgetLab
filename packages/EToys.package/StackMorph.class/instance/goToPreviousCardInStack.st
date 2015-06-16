card in a stack
goToPreviousCardInStack
	"Install the previous card as my current one"

	| anIndex newCard |
	anIndex := self privateCards indexOf: currentPage currentDataInstance.
	newCard := self privateCards atWrap: anIndex - 1.
	self goToCard: newCard