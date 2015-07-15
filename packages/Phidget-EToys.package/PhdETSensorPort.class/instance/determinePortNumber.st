initialization
determinePortNumber
	
	| number |
	
	number := phidget findFirstFreeSensorConnector.
	(number = -1)
		ifTrue: [^ 1]
		ifFalse: [^ number].