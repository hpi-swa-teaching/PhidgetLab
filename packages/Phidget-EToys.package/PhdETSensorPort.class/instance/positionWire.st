animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."

	"Cannot create Wire while initialisation, because that ruins my Thumbnail. So I do it here."
	self wire ifNil: [ self createWire ].
	self wire setVertices: {
		plug position + ((plug width) / 2 @ plug height).
		self referencePositionInWorld }.