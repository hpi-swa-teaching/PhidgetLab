command execution
doSequentialCommand: aBlock

	| ret |
	ret := self doExamplerCommand: aBlock.
	self getGrouped ifFalse: [
		1 to: turtles size do: [:i |
			sequentialStub index: i.
			aBlock value: sequentialStub.
		].
	] ifTrue: [
		aBlock value: turtles.
	].
	turtles invalidateTurtleMap.
	^ ret.

