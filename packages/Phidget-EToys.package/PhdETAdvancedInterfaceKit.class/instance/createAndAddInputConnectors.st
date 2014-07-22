connectors
createAndAddInputConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETInputConnectorMorph new.
			connector height: self height / 8.
			connector position: self position + ((0-connector width) @ (connector height * (i-1))).
			connector number: i.
			connector changeColorAccordingTo: self getAttached.
			self addMorph: connector.
			self inputConnectors at: i put: connector].