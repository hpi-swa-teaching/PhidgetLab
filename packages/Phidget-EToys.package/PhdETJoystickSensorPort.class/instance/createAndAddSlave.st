initialization
createAndAddSlave

	self slave: (PhdETAssistentSensorPort newStandAlone: self phidget).
	self slave 
		master: self;
		image: self image;
		hide.

	self addMorph: self slave.