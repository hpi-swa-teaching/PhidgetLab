primitives
primSetHeadingAt: i headingArray: headingArray value: heading

	| rad |
	<primitive: 'setScalarHeading' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #setScalarHeading."

	rad := KedamaMorph degreesToRadians: heading.
	headingArray at: index put: rad.
