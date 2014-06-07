viewer values
celcius
	| calibrationValue anotherCalibrationValue |
	calibrationValue := 0.22222.
	anotherCalibrationValue := 61.111.
	self celciusValue: (lastValue * calibrationValue) - anotherCalibrationValue.
	^ self celciusValue