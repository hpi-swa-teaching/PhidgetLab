turtles
lastWhoOf: exampler

	| turtles |
	turtles := turtlesDict at: exampler ifAbsent: [nil].
	^ (turtles arrays first) at: turtles arrays first size.
