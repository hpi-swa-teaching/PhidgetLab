display
textInRow: aNumber

	(self rowIsInRange: aNumber) ifFalse: [ ^ nil ].
	(text indexIsInRange: aNumber) ifFalse: [ ^ nil ].
	^ text at: aNumber