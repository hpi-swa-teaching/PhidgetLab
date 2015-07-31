testing
test01barValues
	
	self bar lastValue: 0.
	self assert: [self bar kilogramm = 0].
	self assert: [self bar newton = 0].
	self assert: [self bar kilopascal  = 0].
	self bar lastValue: 500.
	self assert: [self bar newton rounded = 2]
	