initialization
addText: aLabel

	labeledItem addMorphBack: (Morph new extent: (4@4)) beTransparent.
	labeledItem addMorphBack: (TextMorph new
		backgroundColor: nonTranslucent;
		contentsAsIs: aLabel;
		beAllFont: Preferences standardEToysFont;
		centered).


