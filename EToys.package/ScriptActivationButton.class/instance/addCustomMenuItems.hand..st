menu
addCustomMenuItems: aMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand."

	super addCustomMenuItems: aMenu hand: aHandMorph.
	aMenu addLine.
	aMenu add: 'open underlying scriptor' translated target: target selector: #openUnderlyingScriptorFor: argument: arguments first

