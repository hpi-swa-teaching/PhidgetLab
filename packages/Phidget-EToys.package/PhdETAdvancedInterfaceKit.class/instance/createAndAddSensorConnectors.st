connectors
createAndAddSensorConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETSensorConnectorMorph new.
			connector position: self position + (connector width * (i - 1) @ (self height - connector height)).
			connector number: i.
			self addMorph: connector.
			self sensorConnectors at: i put: connector].