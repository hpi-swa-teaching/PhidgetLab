accessing
value
	"Gets the current value of the output (true/false = on/off)."
	
	phidget isAttached ifFalse: [ ^ false ].
	^ (self class
		primGetValue: phidget id
		at: index - 1) == 1