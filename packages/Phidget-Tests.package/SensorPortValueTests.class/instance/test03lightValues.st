testing
test03lightValues
	self light lastValue: 0.
	self assert: [self light lux = 0].
	self light lastValue: 500.
	self assert: [self light lux = 773.05926]
		