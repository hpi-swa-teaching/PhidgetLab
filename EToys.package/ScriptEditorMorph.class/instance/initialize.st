initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self listDirection: #topToBottom;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 cellPositioning: #topLeft;
		 setProperty: #autoFitContents toValue: true;
	 layoutInset: 2;
	 useRoundedCorners.
	self setNameTo: 'Script Editor' translated.
	firstTileRow := 1.
	"index of first tile-carrying submorph"
	self addNewRow.
	showingMethodPane := false