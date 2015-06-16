pop ups
event: arg1 arrow: arg2 upDown: arg3
	"Reorder the arguments for existing event handlers"
	(arg3 isMorph and:[arg3 eventHandler notNil]) ifTrue:[arg3 eventHandler fixReversedValueMessages].
	^self upDown: arg1 event: arg2 arrow: arg3