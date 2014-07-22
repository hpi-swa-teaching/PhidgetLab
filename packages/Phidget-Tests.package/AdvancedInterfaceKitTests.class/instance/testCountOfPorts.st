testing
testCountOfPorts
	self assert: [self kit inputConnectors size == 8].
	self assert: [self kit outputConnectors size == 8].
	self assert: [self kit sensorConnectors size == 8].