turtles
makeTurtlesAtPositionsIn: positionAndColorArray examplerPlayer: tp ofPrototype: prototype

	| array inst |
	array := tp turtles.

	inst := prototype ifNil: [self makePrototypeOfExampler: tp].

	turtlesDictSemaphore critical: [array addTurtlesCount: positionAndColorArray first size ofPrototype: inst for: self positionAndColorArray: positionAndColorArray].
	self calcTurtlesCount.
	self changed.
