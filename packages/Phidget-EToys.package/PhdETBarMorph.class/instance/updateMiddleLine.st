private
updateMiddleLine

	lineMorph ifNotNil: [
		lineMorph setVertices: { 
			self topCenter + (0@1).
			self bottomCenter - (0@1) } ].