animation
positionWire 
	| middleOfPlug middleOfSide |
	
	self wire ifNil: [ self createWire ].
	middleOfSide := self referencePositionInWorld - (self width / 2 @ 0).
	middleOfPlug := plug position + ((plug width) / 2 @ plug height).
	self wire setVertices: { middleOfPlug. middleOfSide }.