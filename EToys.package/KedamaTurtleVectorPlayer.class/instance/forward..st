player commands
forward: val

	exampler getGrouped ifFalse: [
		self primForwardXArray: (arrays at: 2) yArray: (arrays at: 3) headingArray: (arrays at: 4) value: (val isNumber ifTrue: [val asFloat] ifFalse: [val]) destWidth: kedamaWorld wrapX asFloat destHeight: kedamaWorld wrapY asFloat leftEdgeMode: kedamaWorld leftEdgeModeMnemonic rightEdgeMode: kedamaWorld rightEdgeModeMnemonic topEdgeMode: kedamaWorld topEdgeModeMnemonic bottomEdgeMode: kedamaWorld bottomEdgeModeMnemonic.
	] ifTrue: [
		self groupForward: val
	].
	turtleMapValid := false.
