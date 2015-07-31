testing
test04temperatureValues

	self temperature celciusValue: 100.
	self assert: [self temperature kelvin =  373.15].
	self assert: [self temperature fahrenheit = 212].
	self temperature celciusValue: 0.
	self assert: [self temperature kelvin  = 273.15].
	self assert: [self temperature fahrenheit = 32].