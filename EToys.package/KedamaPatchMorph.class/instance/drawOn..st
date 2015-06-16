drawing
drawOn: aCanvas

	formChanged ifTrue: [
		self displayPatchVariableOn: tmpForm.
	].
	aCanvas drawImage: tmpForm at: self innerBounds origin.

	autoChanged ifTrue: [self changed].
