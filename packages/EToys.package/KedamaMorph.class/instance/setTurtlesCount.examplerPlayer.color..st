turtles
setTurtlesCount: count examplerPlayer: tp color: cPixel

	| prototype |
	prototype := self makePrototypeOfExampler: tp color: cPixel.
	turtlesDictSemaphore critical: [(tp turtles) setTurtlesCount: count prototype: prototype for: self randomize: true].
	self calcTurtlesCount.
