private
createAndAddRefreshButton

	refreshButton := (SimpleButtonMorph newWithLabel: 'Refresh')
		color: (Color r: 0.494 g: 0.694 b: 0.854);
		borderWidth: 1;
		borderColor: Color gray;
		target: self;
		actionSelector: #refresh;
		setBalloonText: 'Refresh the lists if the image was shut down and reloaded';
		useRoundedCorners;
		yourself.
	
	self addMorph: refreshButton.