connectors
checkForFreeConnectors

	self checkForFreeConnectorsOfType: #inputPort inConnectors: self inputConnectors.
	self checkForFreeConnectorsOfType: #sensorPort inConnectors: self sensorConnectors.
	self checkForFreeConnectorsOfType: #outputPort inConnectors: self outputConnectors.
