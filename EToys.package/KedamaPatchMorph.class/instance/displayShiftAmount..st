commands and slots
displayShiftAmount: anInteger

	shiftAmount := anInteger min: 8 max: -32.
	self formChanged.
