initialization
initializeWithThumbnail: aThumbnail withLabel: aLabel andColor: aColor andSend: aSelector to: aReceiver with: aPhidget
	"Initialize the receiver to show aThumbnail on its face, giving it the label supplied and arranging for it, when the button goes down on it, to obtain a new morph by sending the supplied selector to the supplied receiver"

	name := aLabel.
	nonTranslucent := aColor asNontranslucentColor.
	labeledItem := AlignmentMorph newColumn.
	labeledItem color: nonTranslucent;
				borderWidth: 0;
				layoutInset: 4@0;
				cellPositioning: #center.
	
	self addImage: aLabel. "früher: labeledItem addMorph: aThumbnail."
	self addText: aLabel.
	
	self
		beTransparent;
		labelGraphic: ((labeledItem imageForm: 32 backgroundColor: nonTranslucent forRectangle: labeledItem fullBounds) replaceColor: nonTranslucent withColor: Color transparent);
		borderWidth: 0;
		target: aReceiver;
		actionSelector: #launchPartVia:label:phidget:;
		arguments: {aSelector. aLabel. aPhidget};
		actWhen: #buttonDown.

	self stationarySetup.
	
	