animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."
	
	| middleOfPlug leftConnector halfPlugWidth halfWidth invertedHalfHeight |
	halfPlugWidth := self plug width / 2.
	invertedHalfHeight := self height / 2 negated.
	halfWidth := self width / 2.
	middleOfPlug := self plug position + (halfPlugWidth@self plug height).
	leftConnector := self referencePositionInWorld + (halfWidth@invertedHalfHeight).
	self wire ifNil: [self createWire].
	self wire setVertices: {middleOfPlug. leftConnector}.