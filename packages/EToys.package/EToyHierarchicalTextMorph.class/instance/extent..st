geometry
extent: aPoint

	| wasDifferent |
	wasDifferent := self extent ~= aPoint.
	super extent: aPoint.
	wasDifferent ifTrue: [self adjustSubmorphPositions].