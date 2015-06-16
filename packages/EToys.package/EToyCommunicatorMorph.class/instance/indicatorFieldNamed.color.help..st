as yet unclassified
indicatorFieldNamed: aSymbol color: aColor help: helpString

	| f col |
	f := EllipseMorph new
		extent: 10@10;
		color: aColor;
		setBalloonText: helpString.
	self field: aSymbol is: f.
	col := (self inAColumn: {f}) hResizing: #shrinkWrap.
	^col