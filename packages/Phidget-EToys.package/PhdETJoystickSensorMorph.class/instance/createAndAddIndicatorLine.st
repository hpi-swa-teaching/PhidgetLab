submorphs-add/remove
createAndAddIndicatorLine

	indicatorLine := PhidgetPolygonMorph
		createLineFrom: self center
		to: self center
		color: Color black
		width: 3.
		
	self 
		addMorph: indicatorLine;
		updateIndicatorLine.