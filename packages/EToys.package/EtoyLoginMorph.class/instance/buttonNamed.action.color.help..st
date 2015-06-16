building
buttonNamed: aString action: aSymbol color: aColor help: helpString

	| f col |
	f := SimpleButtonMorph new
		target: self;
		label: aString font: self myFont;
		color: aColor;
		borderColor: aColor muchDarker;
		actionSelector: aSymbol;
		setBalloonText: helpString.
	col := (self inAColumn: {f}) hResizing: #spaceFill.
	^col