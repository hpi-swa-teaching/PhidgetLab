initialization
createAndAddSlave

	self slave: (PhdETAssistentSensorPort newStandAlone: self phidget).
	self slave master: self.
		self slave 
		width: self width;
		height: self height.
	self addMorph: slave.