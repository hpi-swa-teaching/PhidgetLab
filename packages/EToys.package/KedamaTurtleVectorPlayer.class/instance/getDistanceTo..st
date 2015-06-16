player commands
getDistanceTo: players

	| p xArray yArray result pX pY xy |
	players isCollection ifFalse: [
		p := players
	].
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	result := KedamaFloatArray new: self size.
	players isCollection ifTrue: [
		pX := KedamaFloatArray new: players size.
		pY := KedamaFloatArray new: players size.
		1 to: players size do: [:i |
			xy := (players at: i) getXAndY.
			pX at: i put: xy x.
			pY at: i put: xy y.
		].
	] ifFalse: [
		xy := p getXAndY.
		pX := xy x.
		pY := xy y.
	].
	^ self primGetDistanceToX: pX toY: pY xArray: xArray yArray: yArray resultInto: result.
