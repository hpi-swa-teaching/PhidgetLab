player commands
getBlueComponentIn: aPatch

	| pix xArray yArray patch w |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	patch := aPatch costume renderedMorph.
	w := WordArray new: self size.
	1 to: self size do: [:i |
		pix := patch pixelAtX: (xArray at: i) y: (yArray at: i).
		w at: i put: (pix bitAnd: 16rFF).
	].
	^ w.
