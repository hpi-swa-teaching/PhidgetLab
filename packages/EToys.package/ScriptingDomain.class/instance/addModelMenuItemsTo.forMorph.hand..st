user interface
addModelMenuItemsTo: aCustomMenu forMorph: aMorph hand: aHandMorph 
	super addModelMenuItemsTo: aCustomMenu forMorph: self hand: aHandMorph.  "nominally nothing"
	aCustomMenu add: 'take out of window' translated action: #takeOutOfWindow

	