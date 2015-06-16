*Etoys-tiles
addUserSlotItemsTo: aMenu slotSymbol: slotSym
	"Optionally add items to the menu that pertain to a user-defined slot of the given symbol"

	"aMenu add: 'decimal places...' selector: #setPrecisionFor: argument: slotSym
	NB: This item is now generically added for system as well as user slots, so the addition is now done in NubmerType.addExtraItemsToMenu:forSlotSymbol:"