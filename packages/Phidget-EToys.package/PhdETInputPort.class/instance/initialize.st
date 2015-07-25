initialization
initialize

	super initialize.

	self 
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.
	
	self portNumber: (self phidget findFirstFreeConnectorIn: self phidget inputConnectors).

	(self phidget inputConnectors at: 1) ifNotNil: [self createPlug].

	
	