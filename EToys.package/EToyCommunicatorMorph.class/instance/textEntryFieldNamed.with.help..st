as yet unclassified
textEntryFieldNamed: aSymbol with: aString help: helpString

	| f col |
	f := (StringMorph new contents: aString)
		setBalloonText: helpString;
		on: #mouseUp send: #editEvent:for: to: self.
	self field: aSymbol is: f.
	col := (self inAColumn: {f}) color: Color white; hResizing: #shrinkWrap.
	^col