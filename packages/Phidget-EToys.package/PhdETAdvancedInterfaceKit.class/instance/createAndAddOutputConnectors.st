connectors
createAndAddOutputConnectors

	| connector |
		
	(1 to: 8) do: 
		[:i | connector := PhdETOutputConnectorMorph new.
			connector height: self height / 8.
			connector position: self position + (self width @ (connector height * (i-1))).
			connector number: i.
			connector changeColorAccordingTo: self getAttached.
			self addMorph: connector.
			self outputConnectors at: i put: connector].