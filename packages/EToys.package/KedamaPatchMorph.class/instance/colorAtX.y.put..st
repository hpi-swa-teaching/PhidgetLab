commands and slots
colorAtX: xPos y: yPos put: aColor

	| pixel |
	pixel := aColor pixelValueForDepth: 32.
	self pixelAtX: xPos y: yPos put: pixel.
	self formChanged.
