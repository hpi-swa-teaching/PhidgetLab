event handling
mouseUp: evt 
	self removeProperty: #previousLiteral.
	self removeProperty: #previousPoint.
	suffixArrow
		ifNotNil: [(suffixArrow bounds containsPoint: evt cursorPoint)
				ifTrue: [self showSuffixChoices.
					^ self]].
	retractArrow
		ifNotNil: [(retractArrow bounds containsPoint: evt cursorPoint)
				ifTrue: [self deleteLastTwoTiles.
					^ self]].
	^ super mouseUp: evt