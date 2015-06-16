event handling
keyboardFocusChange: aBoolean

	super keyboardFocusChange: aBoolean.
	aBoolean ifTrue: [owner takeFocus].

