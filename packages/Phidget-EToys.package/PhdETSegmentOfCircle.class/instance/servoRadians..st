converting
servoRadians: aFloat
	"Converts the float (an angle in degrees) to radians. By the way it turns the 0° position to a 270° position (looks better in the resulting Morph ;))"
	
	| f |
	f := aFloat -90.0.
	(f<0) ifTrue: [ f := f + 360.0 ].
	^ f degreesToRadians