initialization
delete
	"When deleting, first unregister the port from the phidget and delete the TransformMorph (if any)."

	self wire ifNotNil: [self wire delete].
	plug ifNotNil: [plug delete].
	phidget unregisterPort: self.
	(self owner isKindOf: TransformMorph) ifTrue: [owner delete].
	super delete.