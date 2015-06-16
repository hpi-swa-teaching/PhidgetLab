initialization
addHeaderRow
	"Add the header morph at the top of the tool"

	| aRow title aButton |
	aRow := AlignmentMorph newRow.
	aRow listCentering: #justified; color: Color transparent.
	aButton := self tanOButton.
	aButton actionSelector: #delete.
	aRow addMorphFront: aButton.
	aRow addMorphBack: (title := StringMorph contents: 'Gallery of Players' translated).
	title setBalloonText: 'Double-click here to refresh the contents' translated.
	title on: #doubleClick send: #reinvigorate to: self.
	aRow addMorphBack: self helpButton.
	self addMorphFront: aRow.
