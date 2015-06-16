scripting
restoreTypeColor
	self borderColor: Color black.
	typeColor ifNotNil: [self color: typeColor]