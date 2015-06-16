accessing
setLook: aSymbol to: aFormOrMorph

	(self stateCostumes includesKey: #normal) ifFalse: [
		self privateSetLook: #normal to: visibleMorph.
	].
	self privateSetLook: aSymbol to: aFormOrMorph.
