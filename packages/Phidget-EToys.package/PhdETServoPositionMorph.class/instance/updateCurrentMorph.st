updating
updateCurrentMorph

	| position radius |
	radius := self width / 2.0.
	position := ( (self servoRadians: self current) cos * radius )
		@ ( (self servoRadians: self current) sin * radius ).
	currentMorph setVertices: {
		self center.
		self center + position }.