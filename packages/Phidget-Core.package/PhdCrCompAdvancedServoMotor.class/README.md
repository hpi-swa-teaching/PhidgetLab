I am a special Phidget Component for advanced servo motors.

Like my super class I have a current position and my motor is engaged when a new position is set (see my super class' documentation for more information). Additionally I am able to limitate the min. and max. position of a motor.
I have a current velocity and acceleration, which can be retrieved and set (getter/setter exist). This velocity (or acceleration) should be between my minimal and maximal velocity (or acceleration) which can also be retrieved. Be careful that if those values cannot be retrieved (for instance if the Phidget is not attached) they return a value of 0.0, although this may also be a valid value. Furthermore I'm able to limitate the min. and max. velocity of a motor.
I also can be asked for my current current draw and whether I'm stopped or not.
In isSpinningAccelerated can be set whether I should keep attention on acceleration and velocity or not.

My Phidget can call a user defined callback block when my motor velocity changes, when prior
	advServoMotor on: #VelocityChange do: [ "user defined content" ]
was called.
It also can call a user defined callback block when the current draw of my motor changes, when prior
	advServoMotor on: #CurrentChange do: [ "user defined content" ]
was called.

Currently I only belong to PhdCrAdvancedServo.