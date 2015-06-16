player commands
setX: val

	^ self primSetX: (turtles arrays at: 2) xIndex: self index headingArray: (turtles arrays at: 4) value: val asFloat destWidth: kedamaWorld wrapX leftEdgeMode: kedamaWorld leftEdgeModeMnemonic rightEdgeMode: kedamaWorld rightEdgeModeMnemonic.
