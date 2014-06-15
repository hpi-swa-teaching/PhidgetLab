initialization
initializeOkButton

		okButton := (SimpleButtonMorph new
			target: self;
			label: 'Ok';
			color: Color green;
			useRoundedCorners;
			actionSelector: #okClick).

	