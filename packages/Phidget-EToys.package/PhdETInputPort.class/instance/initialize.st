initialization
initialize

	| number |
	super initialize.
	
	number := phidget findFirstFreeInputConnector.
	(number = -1) ifTrue:
		[portNumber := 1] ifFalse:
			[portNumber := number].
	
	self
		changeColorAccordingTo: phidget getAttached;
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.
	
	(phidget inputConnectors at: 1)	 ifNotNil:
		[self createPlug].