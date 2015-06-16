initialization
initialize
	"initialize the state of the receiver"

	super initialize.
	type := #function.
	self minHeight: 30; vResizing: #spaceFill; borderWidth: 0