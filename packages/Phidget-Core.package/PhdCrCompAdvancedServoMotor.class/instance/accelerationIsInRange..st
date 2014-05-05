accessing
accelerationIsInRange: acceleration
	"Return true if the acceleration is in range of this motor, false otherwise.
	The acceleration is in range if the Phidget is attached and the acceleration is between the min. and max. acceleration."
	
	phidget isAttached ifFalse: [ ^ false ].
	self accelerationMin <= acceleration ifFalse: [ ^ false ].
	self accelerationMax >= acceleration ifFalse: [ ^ false ].
	^ true