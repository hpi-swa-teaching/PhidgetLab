get/set slots
makeGetter: arg1 from: arg2 forPart: arg3
	"Reorder the arguments for existing event handlers"
	(arg3 isMorph and:[arg3 eventHandler notNil]) ifTrue:[arg3 eventHandler fixReversedValueMessages].
	^self makeGetter: arg1 event: arg2 from: arg3