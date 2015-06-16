player commands
colorToPatch: aPatch

	| xArray yArray cArray patch |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	cArray := arrays at: 5.
	patch := aPatch costume renderedMorph.
	1 to: self size do: [:i |
		patch pixelAtX: (xArray at: i) y: (yArray at: i) put: (cArray at: i).
	].
