initialization
createAndAddStatusMorphWith: aStatusMorph

	statusMorph := aStatusMorph.
	self addMorph: statusMorph.
	statusMorph
		width: self width - 10;
		height: 20;
		position:
			(self width // 2 - (statusMorph width // 2)) @
			(self bottom - statusMorph height - 20).