get/set slots
newMakeGetter: arg1 from: arg2 forMethodInterface: arg3
	"Button in viewer performs this to make a new style tile and attach to hand. (Reorder the arguments for existing event handlers)"

	(arg3 isMorph and: [arg3 eventHandler notNil]) ifTrue:
		[arg3 eventHandler fixReversedValueMessages].
	 ^ self makeUniversalTilesGetter: arg1 event: arg2 from: arg3