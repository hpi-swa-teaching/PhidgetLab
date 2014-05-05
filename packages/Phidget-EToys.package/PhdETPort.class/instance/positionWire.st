animation
positionWire
	"Positions the Wire so that it reaches from the origin Phidgits to me. If the Wire doenstn exists, create it."

	"Cannot create Wire while initialisation, because that ruins my Thumbnail. So I do it here."
	wire ifNil: [ self createWire ].
	wire setVertices: {
		phidget referencePositionInWorld.
		self referencePositionInWorld }.