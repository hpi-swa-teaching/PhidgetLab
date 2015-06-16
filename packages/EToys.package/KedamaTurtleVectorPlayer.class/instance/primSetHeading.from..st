primitives
primSetHeading: headingArray from: val

	| heading |
	<primitive: 'setHeadingArrayFrom' module:'KedamaPlugin'>
	"^ KedamaPlugin doPrimitive: #setHeadingArrayFrom."

	val isCollection ifFalse: [
		heading := val asFloat.
		heading := KedamaMorph degreesToRadians: heading.
	].

	1 to: headingArray size do: [:i |
		val isCollection ifTrue: [
			heading := val at: i.
			heading := KedamaMorph degreesToRadians: heading.
		].
		headingArray at: i put: heading.
	].
