viewer values
fahrenheit

	| conversionFactor anotherConversionFactor fahrenheit |
	conversionFactor := 1.8.
	anotherConversionFactor := 32.
	fahrenheit := (self celciusValue * conversionFactor) + anotherConversionFactor.
	^ fahrenheit 