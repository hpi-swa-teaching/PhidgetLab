initialization
initialize
	super initialize.
	self useRoundedCorners.
	portNumber := 1.
	numberString := (StringMorph new
							contents: portNumber asString;
							emphasis: 1;
							yourself).
	self
		centerNumberString;
		addMorph: numberString.