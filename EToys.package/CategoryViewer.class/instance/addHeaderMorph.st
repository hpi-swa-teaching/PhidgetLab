header pane
addHeaderMorph
	"Add the header at the top of the viewer, with a control for choosing the category, etc."

	| header aButton |
	header := AlignmentMorph newRow color: self color; wrapCentering: #center; cellPositioning: #leftCenter.
	aButton := self tanOButton.
	header addMorph: aButton.
	aButton actionSelector: #delete;
		setBalloonText: 'remove this pane from the screen
don''t worry -- nothing will be lost!.' translated.
	self maybeAddArrowsTo: header.
	header beSticky.
	self addMorph: header.
	self addNamePaneTo: header.
	chosenCategorySymbol := #basic