scrolling
scrolling: aBoolean inRow: anInteger
	"Starts/Stops scrolling of row <anInteger> if necessary."
	
	(self rowIsInRange: anInteger) ifFalse: [ ^ self ].
	(running at: anInteger) = aBoolean ifTrue: [ ^ self ]. "Nothing to do, so just quit here"
	
	aBoolean
		ifTrue: [ self startScrollingRow: anInteger ]
		ifFalse: [ self stopScrollingRow: anInteger ].
	
	