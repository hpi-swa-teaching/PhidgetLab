etoys
setMotorControlMotor2Velocity: aFloat 
	"Sets the velocity of motor 2 attached to a Motor Control Phidget."
	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	(self velocityIsInRange: aFloat) ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at: 2) velocity: aFloat