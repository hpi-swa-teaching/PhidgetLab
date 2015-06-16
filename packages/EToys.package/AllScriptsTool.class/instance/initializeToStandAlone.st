parts bin
initializeToStandAlone
	super initializeToStandAlone.
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		extent: 1 @ 1;
		vResizing: #spaceFill;
		rubberBandCells: true.
	self initializeFor: self currentWorld presenter