primitives
primSetX: xArray xIndex: xIndex headingArray: headingArray value: value destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode

	<primitive: 'turtleScalarSetX' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #turtleScalarSetX."
	KedamaMorph scalarXAt: xIndex xArray: xArray headingArray: headingArray value: value destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode.
