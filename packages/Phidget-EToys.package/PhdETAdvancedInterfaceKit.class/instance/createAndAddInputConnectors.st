connectors
createAndAddInputConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETInputConnectorMorph new.
			connector position: self position + (0 @ (connector height * (i-1))).
			connector number: i.
			self addMorph: connector.
			self inputConnectors at: i put: connector].