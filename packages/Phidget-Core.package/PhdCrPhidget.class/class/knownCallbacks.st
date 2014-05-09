callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the Phidget knows. A subclass may extend this list if needed."
	
	^ #( #Attach #Detach #Error )