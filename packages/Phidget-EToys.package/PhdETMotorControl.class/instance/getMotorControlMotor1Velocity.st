etoys
getMotorControlMotor1Velocity
	"Returns the velocity of motor 1 attached to a Motor Control Phidget."
	
	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at:1) velocity