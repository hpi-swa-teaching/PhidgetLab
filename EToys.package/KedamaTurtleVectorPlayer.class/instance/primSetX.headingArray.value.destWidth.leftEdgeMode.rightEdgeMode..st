primitives
primSetX: xArray headingArray: headingArray value: v destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode

	| val newX |
	<primitive: 'turtlesSetX' module: 'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #turtlesSetX."

	v isCollection ifFalse: [
		val := v asFloat.
	].

	1 to: xArray size do: [:i |
		v isCollection ifTrue: [
			newX := v at: i.
		] ifFalse: [
			newX := val.
		].
		KedamaMorph scalarXAt: i xArray: xArray headingArray: headingArray value: newX destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode.
	].

