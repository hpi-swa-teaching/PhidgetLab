initialization
install

	| t |
	self player kedamaWorld: kedamaWorld.
	t := self player createTurtles.
	kedamaWorld makeTurtles: turtleCount examplerPlayer: self player color: ((self color pixelValueForDepth: 32) bitAnd: 16rFFFFFF) ofPrototype: nil turtles: t randomize: true.
	self player createSequenceStub.
