A PhdETWheelMorph is a Morph representing a wheel. It is able to spin with a given speed (therefore it uses the step Method).

Instance Variables
	maxSpeed:		a Float
	minSpeed:		a Float
	rotationAngle:	a Float
	rotationStep:	a Float
	rotationTime:	an Integer
	speed:			a Float

maxSpeed
	- A Float indicating the maximum speed.

minSpeed
	- A Float indicating the minimum speed.

rotationAngle
	- My current angle (in radians).

rotationStep
	- The angle (in radians) I turn every step.

rotationTime
	- An Integer: The wheel turns every <rotationTime> milliseconds.

speed
	- A Float in the interval [minSpeed, maxSpeed] indicating the current speed.
