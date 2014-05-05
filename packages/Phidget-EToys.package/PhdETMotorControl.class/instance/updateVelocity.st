events
updateVelocity
	
	| velocity1 velocity2 |
	
	velocity1 := self getMotorControlMotor1Velocity.
	velocity2 := self getMotorControlMotor2Velocity.
	
	leftWheel speed: velocity1.
	rightWheel speed: velocity2.
	leftVelocityBar value: velocity1.
	rightVelocityBar value: velocity2.