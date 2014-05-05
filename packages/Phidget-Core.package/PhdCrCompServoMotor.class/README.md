I am a special Phidget Component for simple servo motors.

I have a current position, which can be retrieved and set (getter/setter exist). This position should be between my minimal and maximal position which can also be retrieved. Be careful that if those values cannot be retrieved (for instance if the Phidget is not attached) they return a value of 0.0, although this may also be a valid value.
My motor is automatically engaged when a new position is set. The boolean value whether it is engaged or not can be retrieved and set.

My Phidget can call a user defined callback block when my motor position changes, when prior
	servoMotor on: #PositionChange do: [ "user defined content" ]
was called.

Currently I only belong to PhdCrServo.