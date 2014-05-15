etoys
accelerationIsInRange: aFloat 

	aFloat < self getMotorControlMinAcceleration ifTrue: [ ^ false ].
	aFloat > self getMotorControlMaxAcceleration ifTrue: [ ^ false ].
	self getMotorControlMinAcceleration == self getMotorControlMaxAcceleration ifTrue: [ ^ false ].
	^ true