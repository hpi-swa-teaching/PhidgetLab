card in a stack
goToNextCardInStack
	"Make the card *after* the current card become the current card"

	| anIndex newCard |
	anIndex := self privateCards indexOf: currentPage currentDataInstance.
	newCard := self privateCards atWrap: anIndex + 1.
	self goToCard: newCard