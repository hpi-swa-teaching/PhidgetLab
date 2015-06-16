as yet unclassified
doAccept

	myTarget 
		text: self activeTextMorph contents textStyle: self activeTextMorph textStyle;
		releaseCachedState;
		changed.
	lastGlobalColor ifNotNil: [myTarget textColor: lastGlobalColor].
	super doAccept.