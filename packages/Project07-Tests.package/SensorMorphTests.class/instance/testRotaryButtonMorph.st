testing
testRotaryButtonMorph
"Tests wheather the rotary button has the expected rotation angle"

	| sensor valueCreator |
	valueCreator := PhdValueCreator new.
	sensor := PhdETRotationSensorPort newStandAlone: valueCreator.
	valueCreator updatePort.
	[valueCreator done] whileFalse:
			[self should: [sensor statusMorph current = ((valueCreator invertedValue)/1000*300)].
			valueCreator nextValue].
		
	sensor delete.
	