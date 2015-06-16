menus
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add custom menu items to a menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu addUpdating: #autoFitString target: self action: #autoFitOnOff.
	aCustomMenu addLine.
	aCustomMenu add: 'fix layout' target: self action: #fixLayout.
	threadPolygon ifNil: [
		aCustomMenu add: 'show thread' target: self action: #createThreadShowing.
	] ifNotNil: [
		aCustomMenu add: 'hide thread' target: self action: #deleteThreadShowing.
	].