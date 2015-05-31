initialize-release
basicInitialize

	super initialize.
	
	openedPhidgets := #().
	removeButtons := #().
	
	self
		width: 350;
		color: Color white;
		borderWidth: 1;
		useRoundedCorners;
		createAndAddSubMorphs;
		height: self minHeight.