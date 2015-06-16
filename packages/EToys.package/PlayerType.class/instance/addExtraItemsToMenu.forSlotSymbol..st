tiles
addExtraItemsToMenu: aMenu forSlotSymbol: slotSym
	"If the receiver has extra menu items to add to the slot menu, here is its chance to do it"

	aMenu add: 'tiles to get...' translated selector: #offerGetterTiles: argument: slotSym.
	aMenu add:  'reveal me' translated target: aMenu defaultTarget selector: #revealPlayerNamed:in: argumentList: { slotSym. ActiveWorld}.