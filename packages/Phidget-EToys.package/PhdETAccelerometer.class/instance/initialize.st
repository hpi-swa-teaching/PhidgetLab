initialization
initialize

	self 
		initPhidget: PhdCrAccelerometer new
		withLabel: 'Accelerometer';
		width: 150;
		height: 110;
		initializeGyroMorph.
		
	phidHandle
		on: #Attach do: [ self attach ];
		on: #Detach do: [ self updateGyroMorph ];
		on: #AccelerationChange do: [ self updateGyroMorph ].