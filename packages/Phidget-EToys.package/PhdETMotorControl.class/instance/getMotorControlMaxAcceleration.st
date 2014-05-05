etoys
getMotorControlMaxAcceleration
	"Answers the maximum possible Acceleration a Motor Control Phidget can handle."

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at:1) accelerationMax