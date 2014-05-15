initialization
initialize

	| label |
	label := 'Servo Board'.
	self 
		initPhidget: PhdCrServo new
		withLabel: label;
		width: 110;
		height: 83;
		initializeMotorMorph.
		
	phidHandle
		on: #Attach do: [ self attach. self setLabel: (label, ' (', self serialNumber, ')') ];
		on: #Detach do: [ self detach. self setLabel: label. ];
		on: #PositionChange do: [ self positionChange ].