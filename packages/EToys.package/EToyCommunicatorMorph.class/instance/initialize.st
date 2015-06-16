initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self vResizing: #shrinkWrap;
	 hResizing: #shrinkWrap.
	resultQueue := SharedQueue new.
	fields := Dictionary new.
	self useRoundedCorners