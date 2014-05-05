etoys
getMotorControlMinAcceleration
	"Answers the minimum possible Acceleration a Motor Control Phidget can handle."

	phidHandle isAttached ifFalse: [ ^ 0.0 ].
	^ (phidHandle motors at:1) accelerationMin