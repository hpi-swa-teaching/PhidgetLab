connectors
createAndAddSensorConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETSensorConnectorMorph new.
			connector adjustWidth: self width / 8.
			connector position: self position + (connector width * (i - 1) @ self height).
			connector number: i.
			connector changeColorAccordingTo: self getAttached.
			self addMorph: connector.
			self sensorConnectors at: i put: connector].