callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the Servo knows.
	This extends the list the super class knows."
	
	^ super knownCallbacks, #( #PositionChange )