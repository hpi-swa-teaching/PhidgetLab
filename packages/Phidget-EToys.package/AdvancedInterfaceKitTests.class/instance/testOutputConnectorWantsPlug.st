as yet unclassified
testOutputConnectorWantsPlug

	| connector plug event |
	connector := kit outputConnectors at: 1.
	plug := PhdETOutputPlugMorph new.
	event := MouseEvent new.
	self should: [connector wantsDroppedMorph: plug event: event].
	
	plug delete.