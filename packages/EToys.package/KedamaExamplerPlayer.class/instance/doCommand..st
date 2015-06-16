command execution
doCommand: aBlock

	| ret |
	ret := self doExamplerCommand: aBlock.
	turtles ifNotNil: [aBlock value: turtles].

	^ ret.
