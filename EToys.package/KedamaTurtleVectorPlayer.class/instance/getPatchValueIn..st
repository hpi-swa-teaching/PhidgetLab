player commands
getPatchValueIn: aPatch

	| w patch xArray yArray |
	w := WordArray new: self size.
	patch := aPatch costume renderedMorph.
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	patch pixelsAtXArray: xArray yArray: yArray into: w.
	^ w.
