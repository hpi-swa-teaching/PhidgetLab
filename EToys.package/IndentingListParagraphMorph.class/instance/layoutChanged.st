layout
layoutChanged

	super layoutChanged.
	submorphs isEmpty ifTrue: [^self].
	self desiredHeight = self height ifTrue: [^self].
	self height: self desiredHeight.
	container adjustSubmorphPositions.
