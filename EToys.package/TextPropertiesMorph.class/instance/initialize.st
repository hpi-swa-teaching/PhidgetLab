initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	applyToWholeText := true.
	myTarget
		ifNil: [""
			myTarget := TextMorph new openInWorld.
			myTarget contents: ''].

	activeTextMorph := myTarget copy.
	activeTextMorph extent: 300 @ 100;	 
			 releaseCachedState.
	thingsToRevert
		at: #wrapFlag: put: myTarget isWrapped;
		 at: #autoFit: put: myTarget isAutoFit;
		 at: #margins: put: myTarget margins;
		at: #extent: put: myTarget extent.
	self rebuild