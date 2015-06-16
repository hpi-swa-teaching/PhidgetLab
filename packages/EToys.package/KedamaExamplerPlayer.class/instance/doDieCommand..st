command execution
doDieCommand: aBlock

	| ret origSize |
	ret := self doExamplerCommand: aBlock.
	turtles initializeDeletingIndex.
	origSize := turtles size.
	1 to: origSize do: [:i |
		i > origSize ifTrue: [^ ret].
		sequentialStub index: (turtles nextDeletingIndex).
		aBlock value: sequentialStub.
	].

	^ ret.

