card access
goToCardNumber: aCardNumber
	"Install the card whose ordinal number is provided as the current card in the stack"

	self goToCard: (self privateCards atWrap: aCardNumber)