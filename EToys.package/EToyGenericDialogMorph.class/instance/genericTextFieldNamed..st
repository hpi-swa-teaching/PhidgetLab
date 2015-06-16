as yet unclassified
genericTextFieldNamed: aString 
	| newField |
	newField := ShowEmptyTextMorph new beAllFont: self myFont;
				 extent: 400 @ 20;
				 contentsWrapped: ''.
	namedFields at: aString put: newField.
	^ newField