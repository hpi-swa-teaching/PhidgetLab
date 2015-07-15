initialization
initialize

	inverted := false.
	self portNumber: self determinePortNumber.
	super initialize.
	
	lastValue := 0.
	lastValueTime := Time now.
	
	self
		update: self class portType;
		changeColorAccordingTo: (self phidget getAttached). 
				
	(phidget sensorConnectors at: 1) 
		ifNotNil:	[self createPlug].