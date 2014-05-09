initialization
initializeWith: aStatusMorph

	| number |
	
	inverted := false.
	
	number := phidget findFirstFreeSensorConnector.
	(number = -1) ifTrue:
		[portNumber := 1] ifFalse:
			[portNumber := number].
	
	super initialize.
	
	"speed := 0."
	lastValue := 0.
	lastValueTime := Time now.
	self
		color: Color yellow lighter;
		height: 65;
		width: 100;
		createAndAddStatusMorphWith: aStatusMorph;
		createAndAddVelocityMorph;
		update: self class portType;
		positionNumberString.
		
	(phidget sensorConnectors at: 1) ifNotNil:	
		[self createPlug].