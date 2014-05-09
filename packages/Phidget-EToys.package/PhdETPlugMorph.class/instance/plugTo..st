plugging
plugTo: aConnector

	aConnector connectWith: self.
	self 
		plugged: true;
		connector: aConnector.
	(self port) 
		ifNotNil: [self port setPortNumber: (connector number)].