running
testCountOfPorts
	self assert: [self interfaceKit inputConnectors size == 8].
	self assert: [self interfaceKit outputConnectors size == 8].
	self assert: [self interfaceKit sensorConnectors size == 8].