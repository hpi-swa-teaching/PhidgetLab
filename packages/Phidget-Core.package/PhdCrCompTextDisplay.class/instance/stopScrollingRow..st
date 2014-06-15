scrolling
stopScrollingRow: anInteger

	(self rowIsInRange: anInteger) ifFalse: [ ^ self ].
	running at: anInteger put: false.
	self displayRow: anInteger.