player commands
getColor

	^ Color colorFromPixelValue: ((turtles arrays at: 5) at: self index) depth: 32.
