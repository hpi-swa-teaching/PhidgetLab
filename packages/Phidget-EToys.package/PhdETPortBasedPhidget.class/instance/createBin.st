initialization
createBin
	
	| oldResizing aBin |
	aBin := (PhdETPartsBin newPartsBinWithOrientation: #leftToRight from: #())
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		setNameTo: 'Ports';
		dropEnabled: false;
		useRoundedCorners;
		controlingMorph: self;
		yourself.

	oldResizing := aBin vResizing.
	aBin
		listDirection: #leftToRight quadList: self collectPortDescriptorQuads;
		vResizing: #shrinkWrap;
		layoutChanged;
		fullBounds.
		
	^ aBin