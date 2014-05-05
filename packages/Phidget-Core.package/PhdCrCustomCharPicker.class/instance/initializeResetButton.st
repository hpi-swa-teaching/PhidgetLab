initialization
initializeResetButton

		resetButton := (SimpleButtonMorph new
			target: self;
			label: 'Reset';
			color: Color blue;
			actionSelector: #resetClick).

	