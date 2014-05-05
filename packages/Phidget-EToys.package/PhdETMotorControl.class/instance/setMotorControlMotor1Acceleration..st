etoys
setMotorControlMotor1Acceleration: aFloat 
	"Sets the acceleration of motor 1 attached to a Motor Control Phidget."
	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	(self accelerationIsInRange: aFloat) ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at: 1) acceleration: aFloat