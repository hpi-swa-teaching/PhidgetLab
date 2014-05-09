initialize-open-close
resetState
	"when closing/attaching, reset texts and scrolling states."

	super resetState.
	1 to: self textLCD rows do: [ :rowNumber |
		self textLCD displayString: '' inRow: rowNumber. ].
	(self textLCD)
		stopScrolling;
		contrast: 150;
		setBacklightOn: true;
		setCursorOn: false;
		setCursorBlinking: false;
		resetAllCustomChars.