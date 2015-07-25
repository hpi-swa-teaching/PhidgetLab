initialization
initialize

	inverted := false.
	
	super initialize.

	self portNumber: (self phidget findFirstFreeConnectorIn: self phidget sensorConnectors).

	lastValue := 0.
	lastValueTime := Time now.
	
	(phidget sensorConnectors at: 1) 
		ifNotNil:	[self createPlug].