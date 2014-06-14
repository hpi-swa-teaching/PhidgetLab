accessing
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."
	| middleOfPlug leftConnector |
	middleOfPlug := plug position + ((plug width) / 2 @ plug height).
	leftConnector := self referencePositionInWorld + ((self width/2) @ (-1 * self height/2)).
	self wire ifNil: [ self createWire ].
	self wire setVertices: { middleOfPlug. leftConnector }.