primitives
primForwardXArray: xArray yArray: yArray headingArray: headingArray value: v destWidth: destWidth destHeight: destHeight leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode

	| dist newX newY |
	<primitive: 'primTurtlesForward' module: 'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #primTurtlesForward."

	1 to: xArray size do: [:i |
		v isCollection ifTrue: [
			dist := (v at: i) asFloat.
		] ifFalse: [
			dist := v asFloat.
		].
		newX := (xArray at: i) + (dist * (headingArray at: i) cos).
		newY := (yArray at: i) - (dist * (headingArray at: i) sin).
		KedamaMorph scalarXAt: i xArray: xArray headingArray: headingArray value: newX destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode.
		KedamaMorph scalarYAt: i yArray: yArray headingArray: headingArray value: newY destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode.
	].
