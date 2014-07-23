testing
test01barValues
	
	self bar lastValue: 0.
	self assert: [self bar convertedValue = 0].
	self assert: [self bar newton = 0].
	self assert: [self bar pascal  = 0].
	self bar lastValue: 500.
	self assert: [self bar newton rounded = 2]
	