dropping/grabbing
wantsDroppedMorph: aMorph event: evt 
	"For the moment, you have to drop it the right place.  We do not look at enclosing morphs"

	"Two ways to do this:  Must always destroy old node, then drag in new one.
		Or, drop replaces what you drop on.  Nasty with blocks."

	(aMorph isSyntaxMorph) ifFalse: [^false].
	(self structureMatchWith: aMorph) ifFalse: [^false].	"gross structure"

	"Only look at types if NoviceMode -- building EToys"
	^self okToBeReplacedBy: aMorph	"test the types"

	"^ true"