callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the AdvancedServo knows.
	This extends the list the super class knows."
	
	^ super knownCallbacks, #( #VelocityChange #CurrentChange )