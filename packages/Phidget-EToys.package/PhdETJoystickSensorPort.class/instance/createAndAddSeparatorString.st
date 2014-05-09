initialization
createAndAddSeparatorString

	separatorString := (StringMorph new
							contents: '|';
							emphasis: 1;
							yourself).
	self 
		addMorph: separatorString;
		positionSeparatorString.