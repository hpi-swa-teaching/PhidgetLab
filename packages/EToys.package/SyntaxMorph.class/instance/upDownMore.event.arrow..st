pop ups
upDownMore: delta event: evt arrow: arrowMorph

	| st delay1 delay2 now timeOfLastTick currentDelay |
	(self nodeClassIs: LiteralNode) ifFalse: [^ self].
	st := submorphs detect: [:mm | mm isKindOf: StringMorph] ifNone: [^ self].
	delay1 := 300.  "ms"
	delay2 := 50.  "ms"
	now := Time millisecondClockValue.
	timeOfLastTick := (self valueOfProperty: #timeOfLastTick) ifNil: [now - delay1].
	currentDelay := (self valueOfProperty: #currentDelay) ifNil: [delay1].
	now >= (timeOfLastTick + currentDelay) ifTrue:
		[self setProperty: #timeOfLastTick toValue: now.
		"decrease the delay"
		self setProperty: #currentDelay toValue: (currentDelay*8//10 max: delay2).
		st contents: (self decompile asNumber + delta) printString.
		^ self acceptUnlogged].
