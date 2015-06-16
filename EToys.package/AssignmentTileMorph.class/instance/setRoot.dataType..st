initialization
setRoot: aString dataType: aSymbol
	assignmentRoot := aString.
	assignmentSuffix := ':'.
	dataType := aSymbol.
	self updateLiteralLabel