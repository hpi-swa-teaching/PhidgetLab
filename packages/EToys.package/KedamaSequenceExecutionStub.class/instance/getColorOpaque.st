player commands
getColorOpaque

	^ Color colorFromPixelValue: (((turtles arrays at: 5) at: self index) bitOr: 16rFF000000) depth: 32.
