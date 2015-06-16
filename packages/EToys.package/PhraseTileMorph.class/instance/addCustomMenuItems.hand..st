miscellaneous
addCustomMenuItems:  aMenu hand: aHand
	"Add additional items to the halo manu"

	super addCustomMenuItems: aMenu hand: aHand.
	aMenu add: 'Sprout a new scriptor around this phrase' translated target: self action: #sproutNewScriptor