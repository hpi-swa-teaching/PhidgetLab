converting
pointFromAngle: angle
	"Calculates the point of the circle belonging to an angle.
	angle must be in degrees (0<=angle<=360)"
	
	| x y |
	x := ( self servoRadians: angle ) cos * radius.
	y := ( self servoRadians: angle ) sin * radius.
	^ x@y