player commands
setColor: aColor

	(turtles arrays at: 5) at: self index put: ((aColor pixelValueForDepth: 32) bitAnd: 16rFFFFFF).
