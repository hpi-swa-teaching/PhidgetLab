accessing
velocityIsInRange: velocity
	"Return true if the velocity is in range of this motor, false otherwise.
	The velocity is in range if the Phidget is attached and the velocity is between the min. and max. velocity."
	
	phidget isAttached ifFalse: [ ^ false ].
	self velocityMin <= velocity ifFalse: [ ^ false ].
	self velocityMax >= velocity ifFalse: [ ^ false ].
	^ true