initialization
initialize

	| label|
	label := 'Text LCD'.
	self 
		initPhidget: PhdCrTextLCD new withLabel: label;
		width: 250;
		height: 100;
		positionRows.
		
	phidHandle
		on: #Attach do: [ self updateDisplayedText. self setLabel: (label, ' (', self serialNumber, ')') ];
		on: #TextChange do: [ self updateDisplayedText ];
		on: #Detach do: [ self setLabel: label. self detach ].