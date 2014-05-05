initialization
createAndAddMiddleLine

	lineMorph := PolygonMorph
		createLineFrom: statusMorph topCenter
		to: statusMorph bottomCenter
		color: Color black
		width: 2.
	self addMorph: lineMorph.