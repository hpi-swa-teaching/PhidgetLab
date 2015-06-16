initialization
initialize

	super initialize.

	self evaporationRate: 6.
	self diffusionRate: 1.
	self sniffRange: 1.

	displayType := #logScale.
	displayMax := WordArray with: 1024.
	shiftAmount := -2.

	autoChanged := true.

	self formChanged.
