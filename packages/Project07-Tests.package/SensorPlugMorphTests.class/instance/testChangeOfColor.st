testing
testChangeOfColor
	| connector |
	connector := PhdETSensorConnectorMorph new.
	self plug port color = Color gray
		ifTrue: [self plug plugTo: connector.
				self assert: [self plug port color ~= Color gray]].
	