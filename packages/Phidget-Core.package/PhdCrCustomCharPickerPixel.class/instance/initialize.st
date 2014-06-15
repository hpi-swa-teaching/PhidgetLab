initialization
initialize

	super initialize.
	self 
		on: #mouseDown send: #toggleState to: self;
		color: Color blue muchDarker.
		
	state := false.