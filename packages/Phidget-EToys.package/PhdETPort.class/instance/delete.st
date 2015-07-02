initialization
delete
	"When deleting, first unregister the port from the phidget"

	self unlink.
	super delete.
