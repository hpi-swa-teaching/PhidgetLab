as yet unclassified
rebuild

	self removeAllMorphs.
	self addARow: {
		self lockedString: 'Please name this project'.
	}.
	self addARow: {
		self inAColumnForText: {self fieldForProjectName}
	}.
	self addARow: {
		self okButton.
		self cancelButton.
	}.
