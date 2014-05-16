A PhdETServoPositionMorph is a morph that visualizes the properties of a servo motor.
Properties are the maximum and minimum possible position and the current position of the servo.

Instance Variables
	current:		a Float
	currentMorph:	a PolygonMorph
	lineExtension:	an Integer
	max:			a Float
	maxMorph:		a PolygonMorph
	min:			a Float
	minMorph:		a PolygonMorph
	shadowMorph:	a PhdETSegmentOfCircle

current
	- The angle in degress presenting the current position of my servo.

currentMorph
	- The Morph representing the pointer to visualize the current position of the servo.

lineExtension
	- The Number of pixel the min/max lines are visible (=extend) beyond the circle.

max
	- The maximal able position of a servo to set to.

maxMorph
	- The Morph representing a little pointer to visualize the maximal able position of the servo.

min
	- The minimal able position of a servo to set to.

minMorph
	- The Morph representing a little pointer to visualize the minimal able position of the servo.

shadowMorph
	- A Morph indicating a shadow, showing the area which is not reachable for the servo.
