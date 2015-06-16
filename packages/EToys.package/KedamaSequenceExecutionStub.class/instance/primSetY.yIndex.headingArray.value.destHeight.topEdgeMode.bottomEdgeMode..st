primitives
primSetY: yArray yIndex: yIndex headingArray: headingArray value: value destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode

	<primitive: 'turtleScalarSetY' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #turtleScalarSetY."
	KedamaMorph scalarYAt: yIndex yArray: yArray headingArray: headingArray value: value destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode.
