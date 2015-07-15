initialization
createAndAddSlave

	self slave: (PhdETAssistentSensorPort newStandAlone: self phidget).
	self slave master: self.
	self slave extent: self image extent.
	self addMorph: slave.