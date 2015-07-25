initialization
initialize

	super initialize.

	self changeColorAccordingTo: self phidget getAttached.
	
	"Just important for testing"
	receivedUpdate := false.
	