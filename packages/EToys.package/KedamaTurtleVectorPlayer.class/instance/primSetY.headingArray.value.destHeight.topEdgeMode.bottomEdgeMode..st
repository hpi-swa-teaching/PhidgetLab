primitives
primSetY: yArray headingArray: headingArray value: v destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode

	| val newY |
	<primitive: 'turtlesSetY' module: 'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #turtlesSetY."

	v isCollection ifFalse: [
		val := v asFloat.
	].

	1 to: yArray size do: [:i |
		v isCollection ifTrue: [
			newY := v at: i.
		] ifFalse: [
			newY := val.
		].
		KedamaMorph scalarYAt: i yArray: yArray headingArray: headingArray value: newY destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode.
	].
