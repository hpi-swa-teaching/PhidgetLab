card access
goToLastCardInBackground
	"Install the final card in the current background as the current card"

	| kind |
	kind := currentPage player class baseUniclass.
	self goToCard: (self privateCards reversed detect: [:aCard | aCard isKindOf: kind] ifNone: [^ Beeper beep])