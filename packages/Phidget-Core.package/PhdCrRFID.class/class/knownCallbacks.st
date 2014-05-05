callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the RFID Phidget knows.
	This extends the list the super class knows."
	
	^ super knownCallbacks, #( #OutputChange #TagFound #TagLost )