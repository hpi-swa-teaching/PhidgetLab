viewer values
pascal
	| calibrationValue area |
	calibrationValue := 0.0392.
	area := 0.0007.
	^ (lastValue * calibrationValue) / area.