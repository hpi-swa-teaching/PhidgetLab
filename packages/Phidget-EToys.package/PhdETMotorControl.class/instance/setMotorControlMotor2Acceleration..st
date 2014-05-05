etoys
setMotorControlMotor2Acceleration: aFloat 
	"Sets the acceleration of motor 2 attached to a Motor Control Phidget."
	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	(self accelerationIsInRange: aFloat) ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at: 2) acceleration: aFloat