accessing
value: aNumber

	value := aNumber.
	master ifNotNil: [self master slaveValue: self value].	