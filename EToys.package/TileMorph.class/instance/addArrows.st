arrows
addArrows
	| frame |
	downArrow := ImageMorph new image: DownPicture.
	upArrow := ImageMorph new image: UpPicture.
	frame := Morph new color: Color transparent.
	frame 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap; 
		vResizing: #shrinkWrap;
		cellInset: 0@1;
		layoutInset: 0@1.
	frame addMorphBack: upArrow; addMorphBack: downArrow.
	self addMorphFront: frame.
