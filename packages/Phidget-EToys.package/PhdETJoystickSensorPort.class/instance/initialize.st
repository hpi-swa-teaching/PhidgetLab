initialization
initialize

	slaveValue := 500.
	masterValue := 500.
	super initializeWith: PhdETJoystickSensorMorph new.
	
	"statusMorph 
		extent: (self position + (40 @ 40));
		position: statusMorph position - ((statusMorph width / 4) @ 3);
		updateIndicatorLine."
	
	self 
		createAndAddSlave;
		createAndAddSeparatorString.
	
	"velocityMorph hide."