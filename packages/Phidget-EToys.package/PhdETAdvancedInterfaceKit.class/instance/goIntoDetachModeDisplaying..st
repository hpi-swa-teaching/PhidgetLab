events
goIntoDetachModeDisplaying: aLabel
	
	
	self setLabel: aLabel;
		detach;
		makePortsGray;
		makeButtonsGray