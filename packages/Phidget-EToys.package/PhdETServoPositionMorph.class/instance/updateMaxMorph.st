updating
updateMaxMorph

	| point1 point2 radius x y |
	radius := self width / 2.0.
	x := (self servoRadians: self max) cos.
	y := (self servoRadians: self max) sin.
	point1 := ( x * ( radius - self lineExtension ) ) @ ( y * ( radius - self lineExtension ) ).
	point2 := ( x * ( radius + self lineExtension ) ) @ ( y * ( radius + self lineExtension ) ).
	maxMorph setVertices: {
		self center + point1.
		self center + point2 }.
	
	self updateShadowMorph.