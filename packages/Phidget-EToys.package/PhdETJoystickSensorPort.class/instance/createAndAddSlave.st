initialization
createAndAddSlave

	slave := PhdETAssistentSensorPort newStandAlone: self phidget.
	slave master: self.
	self addMorph: slave.