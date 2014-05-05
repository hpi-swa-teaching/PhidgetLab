initialization
initialize
	super initialize.
	self
		color: Color blue muchLighter;
		height: 70;
		createAndAddStatusMorph;
		update: self class portType.