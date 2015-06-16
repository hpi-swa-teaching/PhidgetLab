events
mouseUp: evt

	(self displayCostume: #mouseEnter) ifFalse: [self displayCostume: #normal].
	self addMouseOverHalo.
