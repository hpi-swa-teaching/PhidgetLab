viewer values
celcius
	| calibrationValue anotherCalibrationValue |
	calibrationValue := 0.22222.
	anotherCalibrationValue := 61.111.
	self celciusValue: (self lastValue * calibrationValue) - anotherCalibrationValue.
	^ self celciusValue