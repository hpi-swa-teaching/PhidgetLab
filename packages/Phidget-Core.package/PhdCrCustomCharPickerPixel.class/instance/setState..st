accessing
setState: aNumber

	(aNumber + self getState) == 1 ifTrue: [ self toggleState ].