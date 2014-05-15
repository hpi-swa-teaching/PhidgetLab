initialization
createAndAddShadowMorph
	"The Morph to visualize the area which the currentMorph can't reach."

	shadowMorph := PhdETSegmentOfCircle new
		circleCenter: self center;
		radius: self width / 2.
	self addMorph: shadowMorph.