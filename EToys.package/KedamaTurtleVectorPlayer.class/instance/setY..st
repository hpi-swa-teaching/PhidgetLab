player commands
setY: v

	exampler getGrouped ifFalse: [
		self
			primSetY: (arrays at: 3)
			headingArray: (arrays at: 4)
			value: (v isNumber ifTrue: [v asFloat] ifFalse: [v])
			destHeight: kedamaWorld wrapY
			topEdgeMode: kedamaWorld topEdgeModeMnemonic
			bottomEdgeMode: kedamaWorld bottomEdgeModeMnemonic.
	] ifTrue: [
		self groupSetY: v.
	].
	turtleMapValid := false.
