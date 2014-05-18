initialization
setupEventsWith: aLabel

	phidHandle
		on: #Attach do: [ self setLabel: (aLabel, ' (', (self serialNumber) printString, ')')];
		on: #Detach do: [self setLabel: aLabel. self detach];
		on: #InputChange do: [ self inputChange ];
		on: #OutputChange do: [ self outputChange ];
		on: #SensorChange do: [ self sensorChange ].