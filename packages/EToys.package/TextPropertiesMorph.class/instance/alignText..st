as yet unclassified
alignText: aSymbol
	self applyToWholeText ifTrue: [self activeEditor selectAll].
	self activeEditor setAlignment: aSymbol.
	self activeEditor paragraph composeAll.
	self activeEditor  recomputeSelection.
	self activeTextMorph updateFromParagraph.
