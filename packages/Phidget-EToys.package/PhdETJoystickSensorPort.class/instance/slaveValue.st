accessing
slaveValue
	(self slave = nil) ifTrue: [^500].
	^ self slave lastValue  