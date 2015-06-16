*Etoys-tiles
addExtraItemsToMenu: aMenu forSlotSymbol: slotSym
	"If the receiver has extra menu items to add to the slot menu, here is its chance to do it.  The defaultTarget of the menu is the player concerned."

	aMenu add: 'decimal places...' translated selector: #setPrecisionFor: argument: slotSym.
	aMenu balloonTextForLastItem: 'Lets you choose how many decimal places should be shown in readouts for this variable' translated