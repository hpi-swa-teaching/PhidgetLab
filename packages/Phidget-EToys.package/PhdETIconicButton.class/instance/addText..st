initialization
addText: aLabel

	self labeledItem addMorphBack: (Morph new extent: (4@4)) beTransparent.
	self labeledItem addMorphBack: (TextMorph new
		backgroundColor: self nonTranslucent;
		contentsAsIs: aLabel;
		beAllFont: Preferences standardEToysFont;
		centered).


