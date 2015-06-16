initialization
initialize
	"initialize the state of the receiver"
	
	super initialize.
	""
	self vResizing: #shrinkWrap;
		 hResizing: #shrinkWrap;
		 layoutInset: 4;
		 beSticky;
		 useRoundedCorners;
		 rebuild.
	