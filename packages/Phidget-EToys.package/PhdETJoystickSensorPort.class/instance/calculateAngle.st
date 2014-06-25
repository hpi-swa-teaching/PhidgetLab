viewer values
calculateAngle
	| normedAdjacent normedOpposite angle radius |
	
	radius := 1.
	angle := 0.
	normedAdjacent := radius / 1000 * (self slaveValue - 500 ).
	normedOpposite := radius / 1000 * (500 - self masterValue).
	angle := (normedOpposite arcTan: normedAdjacent) radiansToDegrees.
	angle < 0
		ifTrue: [angle := 360 + angle].	
	^ angle