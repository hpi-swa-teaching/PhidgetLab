initialization
setupEventsWith: aLabel

	phidHandle
		on: #Attach do: [ self setLabel: (aLabel, ' (', self serialNumber, ')'). 
						  self makePortsColored. self makeButtonsColored ];
		on: #Detach do: [self setLabel: aLabel. self detach. self makePortsGray. self makeButtonsGray];
		on: #InputChange do: [ self inputChange ];
		on: #OutputChange do: [ self outputChange ];
		on: #SensorChange do: [ self sensorChange ].