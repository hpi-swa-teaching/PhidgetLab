connectors
createAndAddOutputConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETOutputConnectorMorph new.
			connector position: self position + ((self width - connector width) @ (connector height * (i-1))).
			connector number: i.
			self addMorph: connector.
			self outputConnectors at: i put: connector].