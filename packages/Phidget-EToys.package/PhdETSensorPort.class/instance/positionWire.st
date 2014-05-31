animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."
	
	| middleOfPlug |
	self halt.
	"Cannot create Wire while initialisation, because that ruins my Thumbnail. So I do it here."
	self wire ifNil: [ self createWire ].
	middleOfPlug := plug position + ((plug width) / 2 @ plug height).
	self wire setVertices: {
		 middleOfPlug.
		self referencePositionInWorld }.