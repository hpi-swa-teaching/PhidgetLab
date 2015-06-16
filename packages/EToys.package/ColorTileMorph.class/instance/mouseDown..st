event handling
mouseDown: evt

	(colorSwatch containsPoint: evt cursorPoint)
		ifFalse: [super mouseDown: evt].
