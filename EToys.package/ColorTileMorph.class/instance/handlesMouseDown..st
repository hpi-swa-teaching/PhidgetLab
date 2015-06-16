event handling
handlesMouseDown: evt

	(colorSwatch containsPoint: evt cursorPoint)
		ifTrue: [^ true]
		ifFalse: [^ super handlesMouseDown: evt].
