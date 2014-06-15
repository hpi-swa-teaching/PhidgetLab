display
setText: aString inRow: anInteger

	(self rowIsInRange: anInteger) ifFalse: [ ^ self ].
	
	self resetScrollPositionAt: anInteger.
	text at: anInteger put: aString.