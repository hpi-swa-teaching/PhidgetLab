primitives
primForwardAt: i xArray: xArray yArray: yArray headingArray: headingArray value: value destWidth: destWidth destHeight: destHeight leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode

	| dist newX newY |
	<primitive: 'primScalarForward' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #primScalarForward."

	dist := value.
	newX := (xArray at: i) + (dist asFloat * (headingArray at: i) cos).
	newY := (yArray at: i) - (dist asFloat * (headingArray at: i) sin).
	KedamaMorph scalarXAt: i xArray: xArray headingArray: headingArray value: newX destWidth: destWidth leftEdgeMode: leftEdgeMode rightEdgeMode: rightEdgeMode.
	KedamaMorph scalarYAt: i yArray: yArray headingArray: headingArray value: newY destHeight: destHeight topEdgeMode: topEdgeMode bottomEdgeMode: bottomEdgeMode.
