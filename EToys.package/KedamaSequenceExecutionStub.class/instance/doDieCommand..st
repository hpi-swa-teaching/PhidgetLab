command execution
doDieCommand: aBlock

	| ret |
	ret := self doExamplerCommand: aBlock.
	sequentialStub index: index.
	aBlock value: sequentialStub.

	^ ret.

