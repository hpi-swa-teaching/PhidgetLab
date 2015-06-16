player commands
basicGetDistanceTo: players

	| p xArray yArray result |
	players isCollection ifFalse: [
		p := players
	].
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	result := KedamaFloatArray new: self size.
	1 to: self size do: [:index |
		players isCollection ifTrue: [
			p := players at: index.
		].
		result at: index put: ((p getX - (xArray at: index)) squared + (p getY - (yArray at: index)) squared) sqrt.

	].
	^ result.
