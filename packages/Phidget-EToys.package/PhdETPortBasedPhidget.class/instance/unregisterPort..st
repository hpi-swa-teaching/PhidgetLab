port handling
unregisterPort: aPort
	"When a port is deleted it unregisters itself here."
	
	ports remove: aPort ifAbsent: [].
	self checkForFreeConnectors.