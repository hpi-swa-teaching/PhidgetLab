initialization
createAndAddSeparatorString

	self separatorString: (StringMorph new
							contents: '|';
							emphasis: 1;
							yourself).
	self 
		addMorph: self separatorString;
		positionSeparatorString.