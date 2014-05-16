initialization
initialize

	inputConnectors := Array new: 1.
	self 
		initPhidget: PhdCrMotorControl new
		withLabel: 'Motor Control';
		width: 165;
		height: 195;
		positionSubmorphs.
		
	phidHandle
		on: #Attach             do: [ self updateVelocity ];
		on: #Detach             do: [ self updateVelocity ];
		on: #VelocityChange   do: [ self updateVelocity ];
		on: #InputChange      do: [ self inputChange].