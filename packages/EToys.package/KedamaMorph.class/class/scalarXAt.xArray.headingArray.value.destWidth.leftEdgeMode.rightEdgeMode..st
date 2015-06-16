global primitive backup
scalarXAt: index xArray: xArray headingArray: headingArray value: val destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode

	| newX headingRadians |
	newX := val.
	newX < 0.0 ifTrue: [
		leftEdgeMode = 1 ifTrue: [
			"wrap"
			newX := newX + destWidth.
		].
		leftEdgeMode = 2 ifTrue: [
			"stick"
			newX := 0.0.
		].
		leftEdgeMode = 3 ifTrue: [
			"bounce"
			newX := 0.0 - newX.
			headingRadians := headingArray at: index.
			headingRadians <  3.141592653589793
				ifTrue: [headingArray at: index put: 3.141592653589793 - headingRadians]
				ifFalse: [headingArray at: index put: 9.42477796076938 - headingRadians].
		].
	].

	newX >= destWidth ifTrue: [
		rightEdgeMode = 1 ifTrue: [
			newX := newX - destWidth.
		].
		rightEdgeMode = 2 ifTrue: [
			newX := destWidth - 0.000001.
		].
		rightEdgeMode = 3 ifTrue: [
			newX := (destWidth - 0.000001) - (newX - destWidth).
			headingRadians := headingArray at: index.
			headingRadians < 3.141592653589793
				ifTrue: [headingArray at: index put: (3.141592653589793 - headingRadians)]
				ifFalse: [headingArray at: index put: (9.42477796076938 - headingRadians)].
		]
	].
	xArray at: index put: newX.
