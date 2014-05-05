accessing
positionIsInRange: position
	"Return true if the position is in range of this motor, false otherwise.
	The position is in range if the Phidget is attached and the position is between the min. and max. position."
	
	phidget isAttached ifFalse: [ ^ false ].
	self positionMin <= position ifFalse: [ ^ false ].
	self positionMax >= position ifFalse: [ ^ false ].
	^ true