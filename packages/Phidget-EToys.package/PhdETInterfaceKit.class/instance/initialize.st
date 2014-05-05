initialization
initialize

	self initPhidget: PhdCrInterfaceKit new withLabel: 'Interface Kit'.
	
	phidHandle
		on: #InputChange do: [ self inputChange ];
		on: #OutputChange do: [ self outputChange ];
		on: #SensorChange do: [ self sensorChange ].