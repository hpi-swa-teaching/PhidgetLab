panes
paneForBorderStyle

	^self inARow: {
		self borderPrototype: (BorderStyle width: 4 color: Color black)
			help:'Click to select a simple colored border' translated.
		self borderPrototype: (BorderStyle raised width: 4)
			help:'Click to select a simple raised border' translated.
		self borderPrototype: (BorderStyle inset width: 4)
			help:'Click to select a simple inset border' translated.
		self borderPrototype: (BorderStyle complexFramed width: 4)
			help:'Click to select a complex framed border' translated.
		self borderPrototype: (BorderStyle complexRaised width: 4)
			help:'Click to select a complex raised border' translated.
		self borderPrototype: (BorderStyle complexInset width: 4)
			help:'Click to select a complex inset border' translated.
		self borderPrototype: (BorderStyle complexAltFramed width: 4)
			help:'Click to select a complex framed border' translated.
		self borderPrototype: (BorderStyle complexAltRaised width: 4)
			help:'Click to select a complex raised border' translated.
		self borderPrototype: (BorderStyle complexAltInset width: 4)
			help:'Click to select a complex inset border' translated.
	}

