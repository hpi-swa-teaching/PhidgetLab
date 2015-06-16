event handling
keyStroke: evt

	selectedMorph ifNil: [^self].
	selectedMorph keyStroke: evt
