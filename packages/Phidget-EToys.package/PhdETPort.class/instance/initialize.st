initialization
initialize

	super initialize.
	
	"Just important for testing"
	receivedUpdate := false.
	
	numberString := (StringMorph new
							contents: portNumber asString;
							emphasis: 1;
							yourself).
	self
		positionNumberString;
		addMorph: numberString.
	