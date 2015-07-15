initialization
initialize

	super initialize.
	
	lineExtension := 4.
	min := 0.
	max := 180.
	current := 90.
	
	self
		color: Color white;
		createAndAddSubmorphs;
		updateSubmorphs.