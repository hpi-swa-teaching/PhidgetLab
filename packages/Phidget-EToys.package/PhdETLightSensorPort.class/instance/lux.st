viewer values
lux

	| calibrationValueM calibrationValueB lux |
	calibrationValueM := 1.478777.
	calibrationValueB := 33.67076.
	lux := calibrationValueM * self lastValue + calibrationValueB.
	^ lux