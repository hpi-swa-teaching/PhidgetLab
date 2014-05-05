initialization
initializeNoneButton

		noneButton := (SimpleButtonMorph new
		target: self;
		label: 'None';
		color: Color blue muchDarker;
		actionSelector: #noneClick).
		
		(noneButton findA: StringMorph) color: Color white.

	