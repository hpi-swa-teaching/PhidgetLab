initialization
initialize

	super initialize.
	textMorph := StringMorph new.
	self
		addMorph: textMorph;
		color: (Color white alpha: 0.5);
		height: 30;
		width: 220;
		text: '01234567890123456789'. "initialise with a sample text. it will be erased when the phidget gets attached."
		
	self initTextMorph.