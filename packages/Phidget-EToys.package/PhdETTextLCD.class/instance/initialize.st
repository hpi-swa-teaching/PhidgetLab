initialization
initialize

	self 
		initPhidget: PhdCrTextLCD new withLabel: 'Text LCD';
		width: 250;
		height: 100;
		positionRows.
		
	phidHandle
		on: #Attach do: [ self updateDisplayedText ];
		on: #TextChange do: [ self updateDisplayedText ];
		on: #Detach do: [ self detach ].