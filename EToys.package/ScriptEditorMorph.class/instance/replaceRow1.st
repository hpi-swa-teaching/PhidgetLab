buttons
replaceRow1

	submorphs first delete.  "the button row"
	self addMorphFront: self buttonRowForEditor.  "up to date"
