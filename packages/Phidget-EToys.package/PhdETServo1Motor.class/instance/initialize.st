initialization
initialize

	self 
		initPhidget: PhdCrServo new
		withLabel: 'Servo Board';
		width: 110;
		height: 83;
		initializeMotorMorph.
		
	phidHandle
		on: #Attach do: [ self attach ];
		on: #Detach do: [ self detach ];
		on: #PositionChange do: [ self positionChange ].