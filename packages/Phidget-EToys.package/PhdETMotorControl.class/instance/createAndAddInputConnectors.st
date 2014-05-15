initialization
createAndAddInputConnectors

	| connector |
	connector := PhdETInputConnectorMorph new.
	connector 
		position: self position - (connector width @ -150);
		number: 1.
	self addMorph: connector.
	inputConnectors at: 1 put: connector.
	