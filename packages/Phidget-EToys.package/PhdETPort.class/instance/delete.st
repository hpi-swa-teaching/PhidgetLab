initialization
delete
	"When deleting, first unregister the port from the phidget and delete the TransformMorph (if any)."

	self wire ifNotNil: [self wire delete].
	self plug ifNotNil: [self plug delete].
	self phidget unregisterPort: self.
	"super delete." "not needed, handled by outOfWorld:"
