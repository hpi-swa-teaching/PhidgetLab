player commands
forward: v

	^ self primForwardAt: self index xArray: (turtles arrays at: 2) yArray: (turtles arrays at: 3) headingArray: (turtles arrays at: 4) value: v asFloat destWidth: kedamaWorld wrapX destHeight: kedamaWorld wrapY leftEdgeMode: kedamaWorld leftEdgeModeMnemonic rightEdgeMode: kedamaWorld rightEdgeModeMnemonic topEdgeMode: kedamaWorld topEdgeModeMnemonic bottomEdgeMode: kedamaWorld bottomEdgeModeMnemonic.
