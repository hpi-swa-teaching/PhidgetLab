card access
goToFirstCardInBackground
	"Install the initial card in the current background as the current card in the stack"

	| kind |
	kind := currentPage player class baseUniclass.
	self goToCard: (self privateCards detect: [:aCard | aCard isKindOf: kind] ifNone: [^ Beeper beep])