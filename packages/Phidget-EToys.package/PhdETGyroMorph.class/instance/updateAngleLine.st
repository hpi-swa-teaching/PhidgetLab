private
updateAngleLine

	| radius newPoint |
	radius := self width / 2.0.
	
	newPoint := (x sin * radius * -1) @ (y sin * radius * -1).
	angleLine setVertices: { self center . self center + newPoint }.