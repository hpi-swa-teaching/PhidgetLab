initialization
createAndAddSubmorphs

	super createAndAddSubmorphs.

	row1 := PhdETTextLCDRowMorph new.
	row2 := PhdETTextLCDRowMorph new.
	self
		addMorph: row1;
		addMorph: row2