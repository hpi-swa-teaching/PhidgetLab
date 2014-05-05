callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the InterfaceKit knows.
	This extends the list the super class knows."
	
	^ super knownCallbacks, #( #SensorChange #InputChange #OutputChange )