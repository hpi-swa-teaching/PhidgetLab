player commands
getUphillIn: aPatch

	| xArray yArray headingArray result patch |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	headingArray := arrays at: 4.
	result := KedamaFloatArray new: self size.
	patch := aPatch costume renderedMorph.
	1 to: self size do: [:index |
		result at: index put: (patch
			uphillForTurtleX: (xArray at: index)
			turtleY: (yArray at: index)
			turtleHeading: (headingArray at: index)).
	].
	^ result.
