viewer values
lux

	| calibrationValueM calibrationValueB lux |
	calibrationValueM := 1.478777.
	calibrationValueB := 33.67076.
	self lastValue = 0
		ifTrue: [lux := 0]
		ifFalse: [lux := calibrationValueM * self lastValue + calibrationValueB].
	^ lux