initialization
addNamePaneTo: header
	"Add the namePane, which may be a popup or a type-in depending on the type of CategoryViewer"

	| plugTextMor searchButton |
	namePane := AlignmentMorph newRow vResizing: #spaceFill; height: 14.
	namePane hResizing: #spaceFill.
	namePane listDirection: #leftToRight.

	plugTextMor := PluggableTextMorph on: self
					text: #searchString accept: #searchString:notifying:
					readSelection: nil menu: nil.
	plugTextMor setProperty: #alwaysAccept toValue: true.
	plugTextMor askBeforeDiscardingEdits: false.
	plugTextMor acceptOnCR: true.
	plugTextMor setTextColor: Color brown.
	plugTextMor setNameTo: 'Search' translated.
	plugTextMor vResizing: #spaceFill; hResizing: #spaceFill.
	plugTextMor hideScrollBarsIndefinitely.
	plugTextMor setTextMorphToSelectAllOnMouseEnter.

	searchButton := SimpleButtonMorph new 
		target: self;
		beTransparent;
		actionSelector: #doSearchFrom:;
		arguments: {plugTextMor}.

	namePane addMorphFront: searchButton.
	namePane addTransparentSpacerOfSize: 6@0.
	namePane addMorphBack: plugTextMor.
	header addMorphBack: namePane.
	self updateSearchButtonLabel.