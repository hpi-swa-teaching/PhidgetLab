initialization
initialize

	super initialize.
	
	self
		color: Color red lighter;
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.