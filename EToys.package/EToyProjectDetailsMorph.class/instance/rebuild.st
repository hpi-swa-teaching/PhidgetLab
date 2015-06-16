initialization
rebuild

	| bottomButtons |

	self removeAllMorphs.

	self addARow: {
		self
			lockedString: 'Please describe this project' translated
			font: Preferences standardEToysTitleFont.
	}.

	self addARow: {self space }.

	self addARow: {
		self rightLockedString: 'Name:' translated.
		self inAColumnForText: {self fieldForProjectName}
	}.

	self expandedFormat ifTrue: [
		self fieldToDetailsMappings do: [ :each |
			self addARow: {
				self rightLockedString: each third translated.
				self inAColumnForText: {(self genericTextFieldNamed: each first) height: each fourth}
			}.
		].
	].
	self addARow: {self space }.

	bottomButtons := self expandedFormat
		ifTrue: [ { self okButton. self cancelButton } ]
		ifFalse: [ { self okButton. self expandButton. self cancelButton } ].
	self addARow: bottomButtons.

	self fillInDetails.