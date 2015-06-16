initialization
initializePatch

	| f |
	f := self player addPatchVarNamed: #patch.
	patchesToDisplay := Array new: 0.
	self addToPatchDisplayList: f.
	^ f.
