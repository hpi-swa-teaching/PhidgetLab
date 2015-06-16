arrows
variableDelay: aBlock

	| now delay dt |
	(self hasProperty: #inVariableDelay) ifTrue:[^self].
	nArrowTicks ifNil: [nArrowTicks := 1].
	now := Time millisecondClockValue.
	aBlock value.
	delay := nArrowTicks > 5 ifTrue: [100] ifFalse: [300].
	nArrowTicks := nArrowTicks + 1.
	dt := Time millisecondClockValue - now max: 0.  "Time it took to do."
	dt < delay ifTrue: [
		self setProperty: #inVariableDelay toValue: true.
		self addAlarm: #removeProperty: withArguments: #(inVariableDelay) after: (delay - dt)].
