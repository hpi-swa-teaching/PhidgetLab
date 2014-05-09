accessing
changeTrigger
	"Gets the current change trigger of the axis (double between 0.0 and 1.0).
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetChangeTrigger: phidget id
		at: index - 1