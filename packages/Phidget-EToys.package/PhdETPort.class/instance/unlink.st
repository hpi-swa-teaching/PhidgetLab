initialization
unlink
	"remove Link to IfKit. super delete should not be called here"

	self wire ifNotNil: [self wire delete].
	self plug ifNotNil: [self plug delete].
	self phidget unregisterPort: self.

