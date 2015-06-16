menus
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu add: 'choose type...' translated action: #showSuffixChoices