menu
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add custom menu items to the menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self topEditor ifNotNil:
		[aCustomMenu add: 'remove function' translated action: #removeFunctionWrapper]