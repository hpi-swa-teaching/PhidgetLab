initialization
createAndAddStatusMorph

	currentMorph := PhidgetPolygonMorph
		createLineFrom: self position + ((self width)/2 @ 0)
		to: self position + ((self width)/2 @ self height)
		color: Color black
		width: 3.
	self addMorph: currentMorph.