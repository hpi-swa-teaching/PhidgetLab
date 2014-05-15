etoys
getMotorControlMotor2Acceleration
	"Returns the acceleration of motor 2 attached to a Motor Control Phidget."

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at:2) acceleration