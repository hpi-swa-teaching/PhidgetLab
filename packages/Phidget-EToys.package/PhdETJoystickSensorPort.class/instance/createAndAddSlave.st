initialization
createAndAddSlave

	self slave: (PhdETAssistentSensorPort newStandAlone: self phidget).
	self slave master: self.
	self addMorph: slave.