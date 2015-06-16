miscellaneous
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add custom menu items to the menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'restore default tile' translated action: #restoreDefaultTile.