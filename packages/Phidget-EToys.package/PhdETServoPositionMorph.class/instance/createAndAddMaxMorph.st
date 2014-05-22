initialization
createAndAddMaxMorph
	"The Morph representing a little pointer to visualize the maximal able position of the servo."
	
	maxMorph := PhidgetPolygonMorph 
		createLineFrom: self position
		to: self position + (1 @ 1)
		color: Color red
		width: 2.
	self addMorph: maxMorph.