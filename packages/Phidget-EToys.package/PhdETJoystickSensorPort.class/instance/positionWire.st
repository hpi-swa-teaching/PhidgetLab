animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."
	"Cannot create Wire while initialisation, because that ruins my Thumbnail. So I do it here."
	
	| middleOfPlug rightConnector halfPlugWidth halfHeight halfWidth |
	halfPlugWidth := plug width / 2.
	halfHeight := self height / 2.
	halfWidth := self width / 2.
	middleOfPlug := plug position + (halfPlugWidth@plug height).
	rightConnector := self referencePositionInWorld - (halfWidth@halfHeight).
	self wire ifNil: [self createWire].
	self wire setVertices: {middleOfPlug. rightConnector}.