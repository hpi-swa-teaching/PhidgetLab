initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self listDirection: #topToBottom;
		 layoutInset: 4;
		 hResizing: #shrinkWrap;
		 vResizing: #shrinkWrap;
		 useRoundedCorners;
		 rebuild 