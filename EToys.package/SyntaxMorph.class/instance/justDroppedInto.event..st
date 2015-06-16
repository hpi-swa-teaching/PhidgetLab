dropping/grabbing
justDroppedInto: aMorph event: evt
	aMorph isSyntaxMorph ifFalse:
		[Preferences tileTranslucentDrag
			ifTrue: [self setDeselectedColor]
			ifFalse: [self align: self topLeft with: self topLeft - self cursorBaseOffset]].
	self removeProperty: #beScript.
	^ super justDroppedInto: aMorph event: evt