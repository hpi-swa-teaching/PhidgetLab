initialization
initPhidget: aPhidHandle withLabel: aLabel
	"Open the given Phidget, create a new PhidgetMorph including its label.
	To add other submorphs than the label, overwrite createAndAddSubmorphs in the
	corresponding subclass of PhdETPhidget."
	
	super initialize.
	phidHandle := aPhidHandle.
	serialNumber := nil.
	self createAndAddSubmorphs.
	
	"Set standard size and color."
	self
		setLabel: aLabel;
		width: 290;
		height: 75;
		color: (Color r: 0.4 g: 0.7 b: 0.4);
		useRoundedCorners.
	
	"open the phidget, so that it's ready to be used.
	Do NOT do this if we are just creating a dummy instance for thumbnail creation."
	thumbnailCreation ifFalse: [ phidHandle openAny ].