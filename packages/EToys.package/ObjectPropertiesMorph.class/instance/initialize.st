initialization
initialize
"initialize the state of the receiver"
	super initialize.
""
	myTarget
		ifNil: [myTarget := RectangleMorph new openInWorld].
	self rebuild