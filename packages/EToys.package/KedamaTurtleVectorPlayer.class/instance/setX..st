player commands
setX: v

	exampler getGrouped ifFalse: [
		self
			primSetX: (arrays at: 2)
			headingArray: (arrays at: 4)
			value: (v isNumber ifTrue: [v asFloat] ifFalse: [v])
			destWidth: kedamaWorld wrapX
			leftEdgeMode: kedamaWorld leftEdgeModeMnemonic
			rightEdgeMode: kedamaWorld rightEdgeModeMnemonic.
	] ifTrue: [
		self groupSetX: v
	].
	turtleMapValid := false.
