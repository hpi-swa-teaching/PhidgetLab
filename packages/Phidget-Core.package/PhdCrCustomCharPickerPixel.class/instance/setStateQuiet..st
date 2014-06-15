accessing
setStateQuiet: aNumber

	(aNumber + self getState) == 1 ifTrue: [ self toggleStateQuiet ].