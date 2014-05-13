as yet unclassified
createAndAddCurrentMorph
	"creates a line (PolygonMorph) as a Submorph to me."
	"I represent a pointer to visualize the current position of my servo."
	
	currentMorph := PhidgetPolygonMorph 
		createLineFrom: self position
		to: self position + (1 @ 1)
		color: Color black
		width: 3.
	self addMorph: currentMorph.