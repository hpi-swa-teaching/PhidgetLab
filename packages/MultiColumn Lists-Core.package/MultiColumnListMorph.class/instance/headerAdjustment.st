accessing
headerAdjustment
	header ifNotNil: [header scrolls ifFalse: [^header neededHeight]].
	^0