animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."
	
	| middleOfPlug leftConnector halfPlugWidth offset invertedHalfHeight |
	offset := 15.
	halfPlugWidth := (plug width) / 2.
	invertedHalfHeight := -1 * self height/2.
	middleOfPlug := plug position + (halfPlugWidth@plug height).
	leftConnector := self referencePositionInWorld + (offset@invertedHalfHeight).
	self wire ifNil: [self createWire].
	self wire setVertices: {middleOfPlug. leftConnector}.