player commands
basicGetAngleTo: players

	| ret p xArray yArray result |
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
		ret := ((p getX - (xArray at: index))@(p getY - (yArray at: index))) theta radiansToDegrees + 90.0.
		ret > 360.0 ifTrue: [ret := ret - 360.0].
		result at: index put: ret.
	].
	^ result.
