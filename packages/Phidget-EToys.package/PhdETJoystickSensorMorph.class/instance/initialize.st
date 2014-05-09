parts bin
initialize

	super initialize.
	
	value := self center.
	"speed := 0."
	self 
		color: Color white;
		createAndAddIndicatorLine.
		