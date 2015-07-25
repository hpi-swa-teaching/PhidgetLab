initialization
initialize
	super initialize.

	self 
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.
		
	self portNumber: (self phidget findFirstFreeConnectorIn: self phidget outputConnectors).
	
	(self phidget outputConnectors at: 1) ifNotNil: [self createPlug].