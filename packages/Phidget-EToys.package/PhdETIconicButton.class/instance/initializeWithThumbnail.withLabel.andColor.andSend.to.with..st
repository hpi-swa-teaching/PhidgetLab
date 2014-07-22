initialization
initializeWithThumbnail: aThumbnail withLabel: aLabel andColor: aColor andSend: aSelector to: aReceiver with: aPhidget
	"Initialize the receiver to show aThumbnail on its face, giving it the label supplied and arranging for it, when the button goes down on it, to obtain a new morph by sending the supplied selector to the supplied receiver"

	self name: aLabel.
	self nonTranslucent: aColor asNontranslucentColor.
	self labeledItem: AlignmentMorph newColumn.
	self labeledItem
				color: self nonTranslucent;
				borderWidth: 0;
				layoutInset: 4@0;
				cellPositioning: #center.
	
	self addImage: aLabel. 
	self addText: aLabel.
	
	self
		beTransparent;
		borderWidth: 0;
		target: aReceiver;
		actionSelector: #launchPartVia:label:phidget:;
		arguments: {aSelector. aLabel. aPhidget};
		actWhen: #buttonDown.

	self stationarySetup.
	
	