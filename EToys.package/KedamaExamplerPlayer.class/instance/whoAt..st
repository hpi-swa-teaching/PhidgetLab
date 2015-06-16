accessing
whoAt: index

	| whoArray |
	whoArray := turtles arrays first.
	index < 1 ifTrue: [^ 0].
	index > whoArray size ifTrue: [^ 0].

	^ whoArray at: index.
