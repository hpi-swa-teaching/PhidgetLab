commands and slots
colorAtX: xPos y: yPos

	^ Color colorFromPixelValue: (self pixelAtX: xPos y: yPos) depth: 32.
