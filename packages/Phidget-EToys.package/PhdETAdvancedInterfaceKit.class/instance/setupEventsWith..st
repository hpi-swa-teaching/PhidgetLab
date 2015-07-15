initialization
setupEventsWith: aLabel

	phidHandle
		on: #Attach do: [self setLabel: (aLabel, ' (', self serialNumber asString, ')'). 
						  phidHandle serialNumber ~= -1
							ifTrue: [self changeColorAccordingTo: true]];
		on: #Detach do: [self setLabel: aLabel. self detach.
						self changeColorAccordingTo: false];
		on: #InputChange do: [self inputChange];
		on: #OutputChange do: [self outputChange];
		on: #SensorChange do: [self sensorChange].