initialization
initialize

	super initialize.
	
	center := 0@0.
	angleA := 0.
	angleB  := 0.
	radius := 1.
	slopeClamps := #(0 0 nil 0).
	
	self
		color: (Color black alpha: 0.5);
		borderColor: Color transparent;
		updateShape.