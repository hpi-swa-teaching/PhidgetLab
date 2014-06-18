testing
testBarValues
	
	self bar lastValue: 0.
	self assert: [self bar convertedValue = 0].
	self assert: [self bar newton = 0].
	self assert: [self bar pascal  = 0].
	