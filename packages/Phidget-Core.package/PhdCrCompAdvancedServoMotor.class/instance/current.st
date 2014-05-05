accessing
current
	"Gets the current current draw for a motor. 
	if there was an error, return 0.0"
	
	phidget isAttached ifFalse: [ ^ 0.0 ].
	^ self class
		primGetCurrent: phidget id
		at: index - 1