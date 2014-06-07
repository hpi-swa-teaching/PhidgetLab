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
		createAndAddStatusMorphWith: aStatusMorph;
		"createAndAddVelocityMorph"
		"extent: self statusMorph extent;"
		update: self class portType;
		positionNumberString;
		setColor;
		height: self statusMorph height; "65;" 
		width: self statusMorph width. "100; "
		
	(phidget sensorConnectors at: 1) ifNotNil:	
		[self createPlug].