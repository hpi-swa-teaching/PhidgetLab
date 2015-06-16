turtles
turtlesCountOf: exampler

	| array |
	array := exampler turtles.
	array ifNil: [^ 0].
	^ array size.
