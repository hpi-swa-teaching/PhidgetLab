initialization
initialize

	super initialize.
	turtleCount := 1.
	self assuredPlayer assureUniClass.
	self extent: 40@40.

	isGroup := false.
	self color: self saturatedRandomColor.

