scrolling
startScrollingRow: anInteger

	(self rowIsInRange: anInteger) ifFalse: [ ^ self ].
	
	running at: anInteger put: true.
	[ self scrollRowProcess: anInteger ] fork.