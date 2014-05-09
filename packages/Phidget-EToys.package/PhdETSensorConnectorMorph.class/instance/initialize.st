initialization
initialize

	| pin |
	super initialize.
	
	self 
		width: 35;
		height: 45;
		color: Color darkGray;
		borderColor: Color darkGray;
		borderWidth: 1.
	
	pin := PolygonMorph
			createLineFrom: self position + ((self width)/2 @ self borderWidth)
			to: self position + ((self width)/2 @ ((self height)*0.75))
			color: Color yellow
			width: 2.
	self addMorph: pin.
			
	overlay := PhdETSensorConnectorOverlayMorph new.
	overlay position: self position.
	self addMorph: overlay.