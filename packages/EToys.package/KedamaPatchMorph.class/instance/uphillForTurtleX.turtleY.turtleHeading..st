commands and slots
uphillForTurtleX: tX turtleY: tY turtleHeading: tH
	"Answer the heading the points in the direction of increasing value for the given patch variable. If there is no gradient, or if the turtle is outside the world bounds, answer the turtles current heading."

	| ret |
	form bits class == ByteArray ifTrue: [form unhibernate].
	ret := self primUpHillX: tX y: tY heading: tH bits: form bits width: form width height: form height sniffRange: sniffRange.
	ret ifNotNil: [^ ret].
	^ self basicUphillForTurtleX: tX turtleY: tY turtleHeading: tH.
