primitives
primGetHeading: headingArray into: resultArray

	| heading |
	<primitive: 'getHeadingArrayInto' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #getHeadingArrayInto."

	1 to: headingArray size do: [:i |
		heading := headingArray at: i.
		heading := heading / 0.0174532925199433.
		heading := 90.0 - heading.
		heading > 0.0 ifFalse: [heading := heading + 360.0].
		resultArray at: i put: heading.
	].
