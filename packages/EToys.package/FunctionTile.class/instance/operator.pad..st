initialization
operator: opSymbol pad: aTilePadMorph
	"Set the operator and pad.  Builds and adds the four submorphs of the receiver
		function-name, left-paren, argument-pad, right-paren."

	| functionTriplet |
	functionTriplet := ScriptingSystem tableOfNumericFunctions  detect: [:triplet | triplet second = opSymbol].  "If none, error..."
	self operator: opSymbol wording: functionTriplet first  translated helpString: functionTriplet third translated pad: aTilePadMorph