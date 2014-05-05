initialization
initialize

	super initialize.
	self
		color: Color yellow lighter;
		height: 50;
		width: 100;
		createAndAddStatusMorph;
		update: self class portType;
		centerNumberString.