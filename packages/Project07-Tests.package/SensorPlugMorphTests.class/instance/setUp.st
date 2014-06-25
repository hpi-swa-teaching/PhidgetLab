running
setUp
	super setUp.
	self kit: PhdETAdvancedInterfaceKit newStandAlone.
	self plug: PhdETSensorPlugMorph new.
	self plug connector: PhdETSensorConnectorMorph new.
	self plug port: (PhdETLightSensorPort newStandAlone: self kit).