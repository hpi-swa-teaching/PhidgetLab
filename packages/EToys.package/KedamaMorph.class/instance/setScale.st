menu
setScale

	| reply |
	reply := UIManager default
		request: 'Set the number of pixels per patch (a number between 1 and 10)?'
		 initialAnswer: pixelsPerPatch printString.
	reply isEmpty ifTrue: [^ self].
	self pixelsPerPatch: reply asNumber.
