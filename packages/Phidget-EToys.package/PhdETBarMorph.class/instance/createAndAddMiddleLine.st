initialization
createAndAddMiddleLine

	lineMorph := PhidgetPolygonMorph
		createLineFrom: statusMorph topCenter
		to: statusMorph bottomCenter
		color: Color black
		width: 2.
	self addMorph: lineMorph.