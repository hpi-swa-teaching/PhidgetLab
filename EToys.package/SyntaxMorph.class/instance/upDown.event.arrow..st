pop ups
upDown: delta event: evt arrow: arrowMorph

	| st |
	st := submorphs detect: [:mm | mm isKindOf: StringMorph] ifNone: [^ self].
	(self nodeClassIs: LiteralNode) ifTrue:
		[ "+/- 1"
		st contents: (self decompile asNumber + delta) printString.
		^ self acceptUnlogged].
	(self nodeClassIs: VariableNode) ifTrue:
		[ "true/false"
		st contents: (self decompile string = 'true') not printString.
		^ self acceptSilently ifFalse: [self changed].
			"maybe set parseNode's key"].

	(self upDownArithOp: delta) ifTrue: [^ self].	"+ - // *   < > <= =   beep:"

	(self upDownAssignment: delta) ifTrue: [^ self].
		"Handle assignment --  increaseBy:  <-   multiplyBy:"
