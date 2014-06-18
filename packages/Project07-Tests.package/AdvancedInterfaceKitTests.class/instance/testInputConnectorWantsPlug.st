testing
testInputConnectorWantsPlug

	| connector plug event |
	connector := kit inputConnectors at: 1.
	plug := PhdETInputPlugMorph new.
	event := MouseEvent new.
	self should: [connector wantsDroppedMorph: plug event: event].
	
	plug delete.