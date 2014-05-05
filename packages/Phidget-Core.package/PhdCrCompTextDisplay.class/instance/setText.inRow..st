display
setText: aString inRow: aNumber

	(self rowIsInRange: aNumber) ifFalse: [ ^ self ].
	
	self resetScrollPosition.
	text at: aNumber put: aString.