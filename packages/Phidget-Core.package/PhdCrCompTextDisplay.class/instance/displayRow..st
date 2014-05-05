display
displayRow: aNumber

	(self rowIsInRange: aNumber) ifFalse: [ ^ self ].
	self displayString: (text at: aNumber) inRow: aNumber.