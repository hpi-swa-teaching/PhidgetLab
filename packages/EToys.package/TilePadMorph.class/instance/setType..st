miscellaneous
setType: aSymbol

	type := aSymbol.
	self color: (ScriptingSystem colorForType: type).
	self extent: (self basicWidth @ TileMorph defaultH)
