player commands
setY: val

	^ self primSetY: (turtles arrays at: 3) yIndex: self index headingArray: (turtles arrays at: 4) value: val asFloat destHeight: kedamaWorld wrapY topEdgeMode: kedamaWorld topEdgeModeMnemonic bottomEdgeMode: kedamaWorld bottomEdgeModeMnemonic.
