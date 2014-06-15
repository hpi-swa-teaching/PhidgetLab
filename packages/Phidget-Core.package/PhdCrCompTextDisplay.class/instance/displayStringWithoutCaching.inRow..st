private
displayStringWithoutCaching: aString inRow: anInteger
	"display string aString in row anInteger.
	if the string is longer than self rows, it is truncated to a valid size.
	return true if the operation succeeded, false otherwise."

	| displayString result |
	phidget isAttached ifFalse: [ ^ false ].
	(self rowIsInRange: anInteger) ifFalse: [ ^ false ].
	displayString := self getValidStringFrom: aString.
	displayString ifNil: [ ^ false ].
	
	result := (self class
		primDisplayString: phidget id
		in: anInteger - 1
		value: displayString) == 1.
	displayedText at: anInteger put: displayString.
	self textChanged.
	^ result