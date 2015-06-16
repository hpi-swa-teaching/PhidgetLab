as yet unclassified
rebuild

	self removeAllMorphs.
	self addARow: {
		self lockedString: 'Enter things to search for'.
	}.
	self addARow: {
		self lockedString: 'Name:'.
		self inAColumnForText: {self fieldForProjectName}
	}.
	self fieldToDetailsMappings do: [ :each |
		self addARow: {
			self lockedString: each third.
			self inAColumnForText: {(self genericTextFieldNamed: each first) height: each fourth}
		}.
	].

	self addARow: {
		self okButton.
		self cancelButton.
	}.
	self fillInDetails.