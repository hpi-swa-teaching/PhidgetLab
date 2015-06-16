initialization
setLiteral: anObject
	"Set the receiver's literal to be anObject. No readout morph here."

	type := #literal.
	self setLiteralInitially: anObject.
