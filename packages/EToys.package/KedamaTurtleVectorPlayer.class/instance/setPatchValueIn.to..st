player commands
setPatchValueIn: aPatch to: value

	| xArray yArray patchMorph |
	xArray := arrays at: 2.
	yArray := arrays at: 3.
	patchMorph := aPatch costume renderedMorph.
	patchMorph setPixelsAtXArray: xArray yArray: yArray value: value.

