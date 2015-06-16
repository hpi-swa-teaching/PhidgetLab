events
addMouseOverHalo

	self wantsRolloverIndicator ifTrue: [
		visibleMorph 
			addMouseActionIndicatorsWidth: mouseOverHaloWidth 
			color: mouseOverHaloColor.
	].
