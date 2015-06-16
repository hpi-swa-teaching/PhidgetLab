viewer access
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Include our modest command set in the ctrl-menu"

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	self player ifNotNil: [
		aCustomMenu addLine.
		aCustomMenu add: 'copy methods' target: self player action: #copyAllMethodsAgain.
	].
