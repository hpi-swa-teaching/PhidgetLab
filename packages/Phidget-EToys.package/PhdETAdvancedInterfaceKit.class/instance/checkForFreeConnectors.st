connectors
checkForFreeConnectors

	self checkForFreeConnectorsOfType: #inputPort in: self inputConnectors.
	self checkForFreeConnectorsOfType: #sensorPort in: self sensorConnectors.
	self checkForFreeConnectorsOfType: #outputPort in: self outputConnectors.
