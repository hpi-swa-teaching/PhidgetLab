commands and slots
getReplicated

	| newGuys theNewGuy |
	newGuys := world makeTurtles: 1 turtlePlayerClass: self class color: self color ofPrototype: self.
	theNewGuy := newGuys first.
	theNewGuy x: self x.
	theNewGuy y: self y.
	theNewGuy heading: self heading.
	(world prototypeOf: self class) privateTurtleCount: (world turtlesCountOf: self class).
	^ theNewGuy
