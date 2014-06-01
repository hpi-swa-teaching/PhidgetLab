initialization
initialize
	| number |
	super initialize.
		
	number := phidget findFirstFreeOutputConnector.
	(number = -1) ifTrue:
		[portNumber := 1] ifFalse:
			[portNumber := number].
		
	self
		setColor;
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.
	(phidget outputConnectors at: 1) ifNotNil:	
		[self createPlug].