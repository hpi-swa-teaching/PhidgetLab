connectors
createAndAddSensorConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETSensorConnectorMorph new.
			connector width: self width / 8.
			connector position: self position + (connector width * (i - 1) @ self height).
			connector number: i.
			self addMorph: connector.
			self sensorConnectors at: i put: connector].