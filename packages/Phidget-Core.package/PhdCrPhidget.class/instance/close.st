initialize-open-close
close
	"Close the Phidget."
	
	self isOpen ifFalse: [ ^ self ].	"already closed"
	
	self resetState.
	self class primClose: id.
	self doPostCloseOperations.