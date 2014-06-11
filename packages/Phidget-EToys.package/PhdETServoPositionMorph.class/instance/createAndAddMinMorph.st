initialization
createAndAddMinMorph
	"The Morph representing a little pointer to visualize the minimal able position of the servo."

	minMorph := PolygonMorph 
		createLineFrom: self position
		to: self position + (1 @ 1)
		color: (Color r: 0 g: 0.3 b: 0)
		width: 2.
	self addMorph: minMorph.