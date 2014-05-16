initialization
createAndAddAngleLine
	"creates a line (PolygonMorph) as a Submorph to me."
	
	angleLine := PhidgetPolygonMorph 
		createLineFrom: self center
		to: self center
		color: Color black
		width: 3.
	self
		addMorph: angleLine;
		updateAngleLine.