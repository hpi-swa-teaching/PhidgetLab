header pane
maybeAddArrowsTo: header
	"Maybe add up/down arrows to the header"

	| wrpr |
	header addTransparentSpacerOfSize: 5@5.
	header addUpDownArrowsFor: self.
	(wrpr := header submorphs last) submorphs second setBalloonText: 'previous category' translated.	
	wrpr submorphs first  setBalloonText: 'next category' translated