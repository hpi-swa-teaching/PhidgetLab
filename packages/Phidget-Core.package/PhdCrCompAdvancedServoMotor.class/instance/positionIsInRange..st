accessing
positionIsInRange: position
	"Return true if the position is in range of this motor, false otherwise.
	The position is in range if the Phidget is attached and the position is between the original min. and max. position."
	
	phidget isAttached ifFalse: [ ^ false ].
	( -22.9921875 <= position and: [ 233.0 >= position ]) ifFalse: [ ^ false ].
	^ true