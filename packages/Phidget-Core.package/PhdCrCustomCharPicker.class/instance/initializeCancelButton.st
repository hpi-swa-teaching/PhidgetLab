initialization
initializeCancelButton

		cancelButton := (SimpleButtonMorph new
		target: self;
		label: 'Cancel';
		color: Color red;
		useRoundedCorners;
		actionSelector: #cancelClick).

	