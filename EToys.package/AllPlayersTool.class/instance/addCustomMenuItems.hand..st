menus
addCustomMenuItems: aMenu hand: aHand
	"Add further items to the menu"

	aMenu add: 'reinvigorate' target: self action: #reinvigorate.
	Preferences eToyFriendly ifFalse: [aMenu add: 'inspect' target: self action: #inspect]