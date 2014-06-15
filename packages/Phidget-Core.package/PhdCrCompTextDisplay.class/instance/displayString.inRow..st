display
displayString: aString inRow: anInteger
	"displays aString in row anInteger.
	if the string is longer than self rows, it is truncated to a valid size.
	return true if the operation succeeded, false otherwise.
	Chaches the string."

	phidget isAttached ifFalse: [ ^ false ].
	(self rowIsInRange: anInteger) ifFalse: [ ^ false ].
	
	text at: anInteger put: aString.
	^ self displayStringWithoutCaching: aString inRow: anInteger