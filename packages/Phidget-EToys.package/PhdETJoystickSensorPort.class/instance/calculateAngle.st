-- all --
calculateAngle
	| normedAdjacent normedOpposite angle radius |
	
	radius := 1.
	normedAdjacent := radius / 1000 * (500 - slaveValue).
	normedOpposite := radius / 1000 * (500 - masterValue).
	normedAdjacent = 0
		ifFalse: [angle := (normedOpposite / normedAdjacent) arcTan radiansToDegrees].
	^ angle