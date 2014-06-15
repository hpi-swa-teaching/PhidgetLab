evaluating
value: aValue

	value := aValue.
	(aValue isNumber) ifTrue: 
		[self updatePort.]