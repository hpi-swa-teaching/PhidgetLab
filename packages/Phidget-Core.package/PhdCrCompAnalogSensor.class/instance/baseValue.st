private
baseValue
	"Gets the current value of the sensor (integer from 0 to 1000)."
	
	phidget isAttached ifFalse: [ ^ 0 ].
	^ self class
		primGetValue: phidget id
		at: index - 1