updating
updateShape

	self setVertices: {
		center.
		center + (self pointFromAngle: angleA).
		center + (self pointFromAngle: angleA + angleB / 2).		"center of circle segment line"
		center + (self pointFromAngle: angleB) }.