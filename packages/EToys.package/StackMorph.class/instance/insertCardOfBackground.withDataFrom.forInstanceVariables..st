card access
insertCardOfBackground: aBackground withDataFrom: aLine forInstanceVariables: slotNames
	"Insert a new card of the given background and have it become the current card. "

	| newCard |
	newCard :=  aBackground newCard.
	self privateCards add: newCard after: self currentCard.
	newCard absorbBackgroundDataFrom: aLine forInstanceVariables: slotNames.
	self goToCard: newCard