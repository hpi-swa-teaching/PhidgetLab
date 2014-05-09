submorphs-add/remove
createAndAddIndicatorLine

	indicatorLine := PolygonMorph
		createLineFrom: self center
		to: self center
		color: Color black
		width: 3.
		
	self 
		addMorph: indicatorLine;
		updateIndicatorLine.