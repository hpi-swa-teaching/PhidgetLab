display
textInRow: aNumber

	(self rowIsInRange: aNumber) ifFalse: [ ^ nil ].
	^ text at: aNumber