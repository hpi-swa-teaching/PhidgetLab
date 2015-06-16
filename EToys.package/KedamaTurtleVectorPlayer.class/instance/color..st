player commands
color: c

	c isColor ifTrue: [
		self setColorVarAt: 5 put: ((c pixelValueForDepth: 32) bitAnd: 16rFFFFFF).
	] ifFalse: [
		self setColorVarAt: 5 put: c.
	].
