callbacks
knownCallbacks
	"Returns a list of callback names (#symbols) the TextLCD knows.
	This extends the list the super class knows."
	
	^ super knownCallbacks, #( #TextChange )